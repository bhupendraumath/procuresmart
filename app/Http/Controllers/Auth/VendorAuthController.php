<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Http\Requests\Auth\LoginRequest;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\View\View;

class VendorAuthController extends Controller
{
    public function vendorlogin(): View
    {
        return view('auth.login');
    }
    public function verifyvendorgst(Request $request)
    {
        $gstin = $request->gst;
        return $gstin;

    }
}
