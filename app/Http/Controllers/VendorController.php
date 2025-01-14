<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;

class VendorController extends Controller
{
    public function register()
    {
        $plant = DB::table('plants')->get();
        $data['plants'] = $plant;
        return view('vendor.register', $data);
    }
    public function update()
    {

        $materialgroup = DB::table('material_groups')->get();
        $data['materialgroup'] = $materialgroup;
        $vendor = DB::table('vendor_details')->where('user_id', Auth::user()->id)->first();
        $data['user'] = $vendor;
        $data['upload_pan'] = (!empty($vendor->id)) ? DB::table('verder_document')->where(['user_id' => $vendor->user_id, 'type' => 'PAN'])->first() : [];

        $data['upload_gstin'] = (!empty($vendor->id)) ? DB::table('verder_document')->where(['user_id' => $vendor->user_id, 'type' => 'GSTIN'])->first() : [];


        $data['upload_msme_certificate'] = (!empty($vendor->id)) ? DB::table('verder_document')->where(['user_id' => $vendor->user_id, 'type' => 'MSME Certificate'])->first() : [];

        $data['upload_cancelled_cheque'] = (!empty($vendor->id)) ? DB::table('verder_document')->where(['user_id' => $vendor->user_id, 'type' => 'Cancelled Cheque'])->first() : [];
        $data['upload_exemption_certificate'] = (!empty($vendor->id)) ? DB::table('verder_document')->where(['user_id' => $vendor->user_id, 'type' => 'Exemption Certificate'])->first() : [];



        return view('vendor.onboarding', $data);
    }
    public function save_vendor()
    {
        return view(view: 'vendor.register');
    }

    public function vendor_profile()
    {
        $materialgroup = DB::table('material_groups')->get();
        $data['materialgroup'] = $materialgroup;
        return view('vendor.vendorprofile', $data);
    }
    public function vendor_changepassword()
    {
        return view('vendor.vendorchangepassword');
    }
    public function status_vendor(Request $request)
    {
        $post['status'] = $request->status;
        $post['internal_note'] = $request->internal_note;
        $post['internal_remark'] = $request->internal_remark;

        $user = DB::table('vendor_details')->where('user_id', $request->user_id)->first();
        if (!empty($user)) {
            $log['added_id'] = Auth::user()->id;
            $log['status'] = $request->status;
            $log['name'] = Auth::user()->name;
            $log['date'] = date('Y-m-d');
            $post['vendor_log'] = json_encode($log) . $user->vendor_log;

        }
        if($request->status=='Approve'){
            $post['company_code'] = $request->company_code;
            $post['plant'] = $request->plant;
            $post['purchorg'] = $request->purchorg;
            $post['payment_terms'] = $request->payment_terms;
            $post['recon_account'] = $request->recon_account;
            $post['vendoraccgrp'] = $request->vendoraccgrp;
            $post['schemagroup'] = $request->schemagroup;
            $post['inco_terms'] = $request->inco_terms;
        }
        DB::table('vendor_details')
            ->where('id', $request->id) // Specify the condition to find the record to update
            ->update($post);
        if (!empty($request->internal_note) || !empty($request->internal_remark)) {
            $data['comment'] = $request->internal_remark ?? null;
            $data['notes'] = $request->internal_note ?? null;
            $data['user_id'] = Auth::user()->id;
            $data['user_name'] = Auth::user()->name;
            $data['vendor_user_id'] = $request->user_id;
            DB::table('remarks')->insertGetId($data);
        }
        if ($request->status == 'Approve') {
            $event['event_name'] = 'vendor-approvel';
            $event['event_description'] = 'Vendor has been approved by ' . Auth::user()->name;
            $event['event_table'] = 'vendor_details';
            DB::table('event_log')->insertGetId($event);
        }
        return redirect()->route('vendor.approve')
            ->with('success', 'Details saved successfully');
    }
    public function saveasdraft(Request $request)
    {

        $data = $request->except('_token');
        $user = DB::table('vendor_details')->where('user_id', Auth::user()->id)->first();
        $log['added_id'] = Auth::user()->id;
        $log['status'] = 'Draft';
        $log['name'] = Auth::user()->name;
        $log['date'] = date('Y-m-d');
        if (!empty($user)) {
            $post['vendor_log'] = json_encode($log) . $user->vendor_log;
            DB::table('vendor_details')->where('user_id', Auth::user()->id)->delete();
        } else {
            $post['vendor_log'] = json_encode($log);
        }

        $post['title'] = $data['title'];
        $post['user_id'] = Auth::user()->id;
        $post['company_name'] = $data['company_name'];
        $post['vendor_code'] = $data['vendor_code'];
        $post['state'] = $data['state'];
        $post['mobileno'] = $data['mobileno'];
        $post['email'] = $data['email'];
        $post['contant_person_name'] = $data['contant_person_name'];
        $post['designation'] = $data['designation'];
        $post['msme_category'] = $data['msme_category'];
        $post['payment_terms'] = $data['payment_terms'];
        $post['payment_method'] = $data['payment_method'];
        $post['addressline1'] = $data['addressline1'];
        $post['addressline2'] = $data['addressline2'];
        $post['addressline3'] = $data['addressline3'];
        $post['district'] = $data['district'];
        $post['country_code'] = $data['country_code'];
        $post['city'] = $data['city'];
        $post['pin'] = $data['pin'];
        $post['pan_number'] = $data['pan_number'];
        $post['gstin'] = $data['gstin'];
        $post['bank_account'] = $data['bank_account'];
        $post['bank_name'] = $data['bank_name'];
        $post['bank_ifsc'] = $data['bank_ifsc'];
        $post['status'] = $data['status'];


        $saveVedorDetails = DB::table('vendor_details')->insertGetId($post);
        // Array of file fields and their respective document types
        $documentFields = [
            'upload_pan' => 'PAN',
            'upload_gstin' => 'GSTIN',
            'upload_msme_certificate' => 'MSME Certificate',
            'upload_cancelled_cheque' => 'Cancelled Cheque',
            'upload_exemption_certificate' => 'Exemption Certificate',
            'upload_other_documents' => 'Other Documents',
        ];


        if (!$saveVedorDetails) {
            return response()->json([
                'success' => false,
                'message' => 'Vendor ID is required.',
            ], 400);
        }

        $uploadedFiles = [];
        $insertData = [];

        foreach ($documentFields as $field => $type) {

            if (!empty($data[$field])) {
                // Store the file and get its path
                $filePath = $request->file($field)->store('uploads', 'public');
                DB::table('verder_document')->where(['user_id' => Auth::user()->id, 'type' => $type])->delete();
                // Prepare data for the verder_document table
                $insertData[] = [
                    'vender_id' => $saveVedorDetails,
                    'type' => $type,
                    'file_path' => $filePath,
                    'created_at' => now(), // Adding timestamp
                    'updated_at' => now(),
                    'user_id' => Auth::user()->id
                ];

                $uploadedFiles[$field] = $filePath;
            }
        }
        if (!empty($insertData)) {
            DB::table('verder_document')->insert($insertData);
        }

        return redirect()->route('vendor.update')
            ->with('success', 'Details saved successfully');
    }
}
