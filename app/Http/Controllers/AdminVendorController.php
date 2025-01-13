<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Illuminate\Validation\Rules\In;

class AdminVendorController extends Controller
{

    public function activevendor()
    {
        $plant                   = DB::table('plants')->get();
        $data['plants']          = $plant;
        return view('vendor.vendoractive', $data);
    }
    public function vendorwaitingapproval()
    {

        $plant                    = DB::table('plants')->get();
        $data['plants']           = $plant;
        $data['vendors']           = DB::table('users')->where('role_id', 5)->get();
        return view('vendor.waitingforapproval', $data);
    }
    public function blockedvendor()
    {
        $plant                   = DB::table('plants')->get();
        $data['plants']          = $plant;
        return view('vendor.vendorblocked', $data);
    }
    public function blacklistedvendor()
    {
        $plant                   = DB::table('plants')->get();
        $data['plants']          = $plant;
        return view('vendor.vendorblacklisted', $data);
    }
    public function vendordetails()
    {

        return view('vendor.vendordetails');
    }
    public function approvevendor(Request $request)
    {

        $plant                          = DB::table('plants')->get();
        $companies                      = DB::table('companies')->get();
        $purch_organizations            = DB::table('purchase_organizations')->get();
        $vendor = DB::table('vendor_details')->where('user_id', $request->id)->first();
        $data['vendor'] = $vendor;
        $data['plants']                 = $plant;
        $data['companies']              = $companies;
        $data['purcorgzations']                 = $purch_organizations;
        $data['user'] = DB::table('users')->where('id', $request->id)->first();

        $data['upload_pan'] = DB::table('verder_document')->where(['user_id' => $vendor->user_id, 'type' => 'PAN'])->first();

        $data['upload_gstin'] = DB::table('verder_document')->where(['user_id' => $vendor->user_id, 'type' => 'GSTIN'])->first();


        $data['upload_msme_certificate'] = DB::table('verder_document')->where(['user_id' => $vendor->user_id, 'type' => 'MSME Certificate'])->first();

        $data['upload_cancelled_cheque'] = DB::table('verder_document')->where(['user_id' => $vendor->user_id, 'type' => 'Cancelled Cheque'])->first();
        $data['upload_exemption_certificate'] = DB::table('verder_document')->where(['user_id' => $vendor->user_id, 'type' => 'Exemption Certificate'])->first();
        $data['remarks'] = DB::table('remarks')->where('vendor_user_id', $vendor->user_id)->get();

        return view('vendor.vendorapproval', $data);
    }
    public function vendorfrievances()
    {
        $plant                          = DB::table('plants')->get();
        $data['plants']                 = $plant;
        return view('vendor.vendorgrievances', $data);
    }
}
