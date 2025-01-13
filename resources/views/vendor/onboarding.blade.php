<x-app-layout>

    <!-- Content Row -->
    <div class="card shadow mb-4" id="enrollmentvendor">
        <div class="card-header py-4">
            <h3 class="m-0 font-weight-bold text-primary">Vendor Onboarding Form</h3>

            @if(session('success'))
    <div class="alert alert-success">
        {{ session('success') }}
    </div>
@endif
@if(!empty($user->internal_note))
<div class="alert alert-danger">
    {{ $user->internal_note }}
</div>
@endif

        </div>

        <div class="card-body">
            <div class="row mb-3 md-5">
                <div class="col-12 filed-inbox">
                    <!-- Progress Bar -->
                    <div class="progress mb-4">
                        <div class="progress-bar progress-bar-striped progress-bar-animated" role="progressbar"
                            style="width: 16%;" aria-valuenow="16" aria-valuemin="0" aria-valuemax="100">
                            Step 1 of 6
                        </div>
                    </div>

                    <!-- Navigation Bar -->
                    <nav class="col-12 mb-4 md-5">
                        <div class="nav nav-tabs" id="nav-tab" role="tablist">
                            <a class="nav-item nav-link active" id="nav-step1-tab" data-toggle="tab" href="#nav-step1"
                                role="tab" aria-controls="nav-step1" aria-selected="true">Profile</a>
                            <a class="nav-item nav-link" id="nav-step2-tab" data-toggle="tab" href="#nav-step2"
                                role="tab" aria-controls="nav-step2" aria-selected="false">Company Profile</a>
                            <a class="nav-item nav-link" id="nav-step3-tab" data-toggle="tab" href="#nav-step3"
                                role="tab" aria-controls="nav-step3" aria-selected="false">Registered Address</a>
                            <a class="nav-item nav-link" id="nav-step4-tab" data-toggle="tab" href="#nav-step4"
                                role="tab" aria-controls="nav-step4" aria-selected="false">Indian Regulatory Details</a>
                            <a class="nav-item nav-link" id="nav-step5-tab" data-toggle="tab" href="#nav-step5"
                                role="tab" aria-controls="nav-step5" aria-selected="false">Documents</a>
                            <a class="nav-item nav-link" id="nav-step6-tab" data-toggle="tab" href="#nav-step6"
                                role="tab" aria-controls="nav-step6" aria-selected="false">Declaration</a>
                        </div>
                    </nav>

                    <!-- Tab Content -->
                    <form class="user" action="{{ route('vendor.success') }}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <div class="tab-content ml-4" id="nav-tabContent">

                            <!-- Step 1 -->
                            <div class="tab-pane fade show active" id="nav-step1" role="tabpanel"
                                aria-labelledby="nav-step1-tab">


                                <div class="form-row mb-4">
                                    <label for="title" class="col-4 col-form-label">Title <span
                                            class="mandatory">*</span></label>
                                    <div class="col-8">
                                        <select id="title" name="title"
                                            class="form-control form-control-user tab-field">
                                            <option value="Company" @selected(!empty($user->title) && $user->title == 'Company')>Company</option>
                                            <option value="Mr." @selected(!empty($user->title) && $user->title == 'Mr.')>Mr.</option>
                                            <option value="Mr. and Mrs." @selected(!empty($user->title) && $user->title == 'Mr. and Mrs.')>Mr. and Mrs.</option>
                                            <option value="Ms." @selected(!empty($user->title) && $user->title == 'Ms.')>Ms.</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-row mb-4">
                                    <label for="company_name" class="col-4 col-form-label">Company Name <span
                                            class="mandatory">*</span></label>
                                    <div class="col-8">
                                        <input class="form-control form-control-user tab-field" type="text"
                                            name="company_name" autocomplete="Company Name" value="{{$user->company_name??''}}"/>
                                    </div>
                                </div>

                                <div class="form-row mb-4">
                                    <label for="vendor_code" class="col-4 col-form-label">Vendor Category<span
                                            class="mandatory">*</span></label>
                                    <div class="col-8">
                                        <select id="inputState" name="vendor_code"
                                            class="form-control form-control-user tab-field">
                                            <!-- <option>Choose...</option> -->
                                            @foreach ($materialgroup as $group)
                                            <option value="{{$group->code}}" @selected(!empty($user->vendor_code) && $user->vendor_code == $group->code)>{{$group->code}}-{{$group->name}}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                                <!-- <div class="row ">  </div>
                <div class="row mb-4"></div> -->
                                <div class="form-row mb-4">
                                    <label for="state" class="col-4 col-form-label">Location<span
                                            class="mandatory">*</span></label>
                                    <div class="col-8">
                                        <select id="state" name="state"
                                            class="form-control form-control-user tab-field">
                                            <!-- <option>Choose...</option> -->
                                            <option value="kerala" @selected(!empty($user->state) && $user->state == 'Kerala')>Kerala</option>
                                            <option value="gujarat" @selected(!empty($user->state) && $user->state == 'Gujarat')>Gujarat</option>

                                        </select>
                                    </div>
                                </div>

                                <div class="form-row mb-4">
                                    <label for="mobileno" class="col-4 col-form-label">Mobile Number<span
                                            class="mandatory">*</span></label>

                                    <div class="input-group col-8">
                                        <!-- Country Code Dropdown -->
                                        <div class="input-group-prepend">
                                            <button class="btn btn-outline-secondary dropdown-toggle" type="button"
                                                data-toggle="dropdown" aria-haspopup="true"
                                                aria-expanded="false">+91</button>
                                            <!-- <div class="dropdown-menu">
                                <a class="dropdown-item" href="#">+91 (India)</a>
                                <a class="dropdown-item" href="#">+1 (USA)</a>
                                <a class="dropdown-item" href="#">+44 (UK)</a>
                                <a class="dropdown-item" href="#">+33 (France)</a>
                                <a class="dropdown-item" href="#">+49 (Germany)</a>
                              </div> -->
                                        </div>
                                        <!-- Phone Number Input -->
                                        <input type="text" class="form-control form-control-user tab-field"
                                            id="mobileno" placeholder="Enter your mobile number" name="mobileno"
                                            value="{{$user->mobileno??''}}">
                                    </div>
                                    <!----->
                                </div>

                                <div class="form-row mb-4">
                                    <label for="email" class="col-4 col-form-label">Email Address<span
                                            class="mandatory">*</span></label>
                                    <div class="col-8">
                                        <input id="email" class="form-control form-control-user tab-field" type="text"
                                            name="email" value="{{$user->email??''}}" />
                                        <small class="form-text text-muted">We'll never share your email with anyone
                                            else.</small>
                                    </div>

                                </div>

                                <!-- <div class="d-flex justify-content-end"> -->
                                <div class="d-flex">
                                    <button type="button" class="btn btn-dark next-step" data-step="2">Next</button>
                                </div>

                            </div>
                            <!-- Step 2 -->
                            <div class="tab-pane fade" id="nav-step2" role="tabpanel" aria-labelledby="nav-step2-tab">

                                <div class="panel">


                                    <div class="form-row mb-4">
                                        <label for="contant_person_name" class="col-4 col-form-label">Contact Person Name <span
                                                class="mandatory">*</span></label>
                                        <div class="col-8">
                                            <input id="contant_person_name" class="form-control form-control-user tab-field"
                                                type="text" name="contant_person_name" value="{{$user->contant_person_name??''}}"
                                                autocomplete="Contact Person Name" />
                                        </div>
                                    </div>
                                    <div class="form-row mb-4">
                                        <label for="designation" class="col-4 col-form-label">Designation</label>
                                        <div class="col-8">
                                            <input id="designation" class="form-control form-control-user tab-field"
                                                type="text" name="designation" value="{{$user->designation??''}}"/>

                                        </div>
                                    </div>

                                    <div class="form-row mb-4">
                                        <label for="msme_category" class="col-4 col-form-label">MSME Category</label>

                                        <div class="col-8">
                                            <select id="inputState" class="form-control form-control-user tab-field" name="msme_category">
                                                <option>Choose...</option>
                                                <option name="Micro Enterprise" @selected(!empty($user->msme_category) && $user->msme_category == 'Micro Enterprise')>Micro Enterprise</option>
                                                <option name="Small Enterprise" @selected(!empty($user->msme_category) && $user->msme_category == 'Small Enterprise')>Small Enterprise</option>
                                                <option selected="Medium Enterprise" @selected(!empty($user->msme_category) && $user->msme_category == 'Medium Enterprise')>Medium Enterprise</option>
                                            </select>
                                        </div>

                                    </div>
                                </div>
                                <div class="form-row mb-4">
                                    <label for="payment_terms" class="col-4 col-form-label">Payment Terms</label>
                                    <div class="col-8">
                                        <select class="form-control form-control-user tab-field" id="payment_terms" name="payment_terms">
                                            <option selected="">Select Payment Terms</option>
                                            <option value="Net 30"  @selected(!empty($user->payment_terms) && $user->payment_terms == 'Net 30')>Net 30</option>
                                            <option value="Net 60" @selected(!empty($user->payment_terms) && $user->payment_terms == 'Net 60')>Net 60</option>
                                            <option value=">2% Discount if Paid in 10 Days, Due in 30 Days" @selected(!empty($user->payment_terms) && $user->payment_terms == '>2% Discount if Paid in 10 Days, Due in 30 Days')>2% Discount if Paid in 10 Days, Due in 30 Days
                                            </option>
                                            <option value="End of the Month" @selected(!empty($user->payment_terms) && $user->payment_terms == 'End of the Month')>End of the Month</option>
                                            <option value="15 Days from Invoice Date" @selected(!empty($user->payment_terms) && $user->payment_terms == '15 Days from Invoice Date')>15 Days from Invoice Date</option>
                                            <option value="DueOnReceipt" @selected(!empty($user->payment_terms) && $user->payment_terms == 'Due on Receipt')>Due on Receipt</option>
                                            <option value="Cash on Delivery" @selected(!empty($user->payment_terms) && $user->payment_terms == 'Cash on Delivery')>Cash on Delivery</option>
                                            <option value="Quarterly" @selected(!empty($user->payment_terms) && $user->payment_terms == 'Quarterly Payments')>Quarterly Payments</option>
                                            <option value="AdvancePayment" @selected(!empty($user->payment_terms) && $user->payment_terms == 'Advance Payment Required')>Advance Payment Required</option>
                                            <option value="Monthly" @selected(!empty($user->payment_terms) && $user->payment_terms == 'Monthly Payments')>Monthly Payments</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-row mb-4">
                                    <label for="payment_method" class="col-4 col-form-label">Payment Methods</label>
                                    <div class="col-8">
                                        <select class="form-control form-control-user tab-field" id="payment_method" name="payment_method">
                                            <option>Select Payment Methods</option>
                                            <option value="T-bank" selected="">T-Bank Transfer</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="d-flex">
                                    <button type="button" class="btn btn-dark prev-step ml-1"
                                        data-step="1">Previous</button>
                                    <button type="button" class="btn btn-dark next-step ml-1"
                                        data-step="3">Next</button>
                                </div>
                            </div>

                            <!-- Step 2 -->
                            <!-- Step 3 -->
                            <div class="tab-pane fade" id="nav-step3" role="tabpanel" aria-labelledby="nav-step3-tab">
                                <div class="form-row mb-4">
                                    <label class="col-4 col-form-label">Address line 1 <span
                                            class="mandatory">*</span></label>
                                    <div class="col-8">
                                        <input type="text" id="address1"
                                            class="form-control form-control-user tab-field" autocomplete="Address" name="addressline1"
                                            value="{{$user->addressline1??''}}">
                                    </div>
                                </div>
                                <div class="form-row mb-4">
                                    <label class="col-4 col-form-label">Address line 2</label>
                                    <div class="col-8">
                                        <input type="text" id="address2"
                                            class="form-control form-control-user tab-field" name="addressline2" value="{{$user->addressline2??''}}">
                                    </div>
                                </div>
                                <div class="form-row mb-4">
                                    <label class="col-4 col-form-label">Address line 3</label>
                                    <div class="col-8">
                                        <input type="text" id="address3"
                                            class="form-control form-control-user tab-field" name="addressline3" value="{{$user->addressline3??''}}">
                                    </div>
                                </div>
                                <div class="form-row mb-4">
                                    <label class="col-4 col-form-label">District</label>
                                    <div class="col-8">
                                        <input type="text" id="district"
                                            class="form-control form-control-user tab-field" name="district" value="{{$user->district??''}}">
                                    </div>
                                </div>
                                <div class="form-row mb-4">
                                    <label class="col-4 col-form-label">Country</label>
                                    <div class="col-8">
                                        <select class="form-control form-control-user tab-field" id="country" name="country_code">
                                            <option value="IN">India</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-row mb-4">
                                    <label class="col-4 col-form-label">State</label>
                                    <div class="col-8">
                                        <select class="form-control form-control-user tab-field" id="state" name="state">
                                            <option value="" disabled selected>Select a state</option>
                                            <option value="1">Andhra Pradesh - 1</option>
                                            <option value="2">Arunachal Pradesh - 2</option>
                                            <option value="3">Assam - 3</option>
                                            <option value="4">Bihar - 4</option>
                                            <option value="5">Chhattisgarh - 5</option>
                                            <option value="6">Goa - 6</option>
                                            <option value="7">Gujarat - 7</option>
                                            <option value="8">Haryana - 8</option>
                                            <option value="9">Himachal Pradesh - 9</option>
                                            <option value="10">Jammu and Kashmir - 10</option>
                                            <option value="11">Jharkhand - 11</option>
                                            <option value="12">Karnataka - 12</option>
                                            <option value="13">Kerala - 13</option>
                                            <option value="14" selected>Madhya Pradesh - 14</option>
                                            <option value="15">Maharashtra - 15</option>
                                            <option value="16">Manipur - 16</option>
                                            <option value="17">Meghalaya - 17</option>
                                            <option value="18">Mizoram - 18</option>
                                            <option value="19">Nagaland - 19</option>
                                            <option value="20">Odisha - 20</option>
                                            <option value="21">Punjab - 21</option>
                                            <option value="22">Rajasthan - 22</option>
                                            <option value="23">Sikkim - 23</option>
                                            <option value="24">Tamil Nadu - 24</option>
                                            <option value="25">Telangana - 25</option>
                                            <option value="26">Uttar Pradesh - 26</option>
                                            <option value="27">Uttarakhand - 27</option>
                                            <option value="28">West Bengal - 28</option>
                                            <option value="29">Andaman and Nicobar Islands - 29</option>
                                            <option value="30">Chandigarh - 30</option>
                                            <option value="31">Dadra and Nagar Haveli and Daman and Diu - 31</option>
                                            <option value="32">Lakshadweep - 32</option>
                                            <option value="33">Delhi - 33</option>
                                            <option value="34">Puducherry - 34</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-row mb-4">
                                    <label class="col-4 col-form-label">City</label>
                                    <div class="col-8">
                                        <input type="text" class="form-control form-control-user tab-field" name="city" value="{{$user->city??''}}">
                                    </div>
                                </div>
                                <div class="form-row mb-4">
                                    <label class="col-4 col-form-label">Pin</label>
                                    <div class="col-8">
                                        <input type="text" class="form-control form-control-user tab-field" name="pin" value="{{$user->pin??''}}">
                                    </div>
                                </div>

                                <div class="d-flex">
                                    <button type="button" class="btn btn-dark prev-step ml-1"
                                        data-step="2">Previous</button>
                                    <button type="button" class="btn btn-dark next-step ml-1"
                                        data-step="4">Next</button>
                                </div>

                            </div>

                            <!-- Step 4 -->
                            <div class="tab-pane fade" id="nav-step4" role="tabpanel" aria-labelledby="nav-step4-tab">
                                <div class="panel">
                                    </br>
                                    <div class="form-row mb-4">
                                        <label for="pan_number" class="col-4 col-form-label">PAN Number <span
                                                class="mandatory">*</span></label>
                                        <div class="col-8">
                                            <input id="pan_number" class="form-control form-control-user tab-field"
                                                type="text" name="pan_number" 
                                                autocomplete="PAN Number" value="{{$user->pan_number??''}}"/>
                                        </div>

                                        <div class="col-12">
                                            <small class="form-text text-muted">PAN number must have 10 characters. For
                                                eg: AESTG2458A</small>
                                        </div>
                                    </div>

                                    <div class="form-row mb-4">
                                        <label for="gstin" class="col-4 col-form-label">GSTIN <span
                                                class="mandatory">*</span></label>
                                        <div class="col-8">
                                            <input id="gstin" class="form-control form-control-user tab-field"
                                                type="text" name="gstin" value="{{$user->gstin??''}}"
                                                autocomplete="GSTIN" />
                                        </div>
                                    </div>
                                    <div class="form-row mb-4">
                                        <label for="bank_account" class="col-4 col-form-label">Bank Account Number <span
                                                class="mandatory">*</span></label>
                                        <div class="col-8">
                                            <input id="bank_account" class="form-control form-control-user tab-field"
                                                type="text" name="bank_account" value="{{$user->bank_account??''}}"
                                                autocomplete="Bank Account Number" />
                                        </div>
                                    </div>
                                    <div class="form-row mb-4">
                                        <label for="confirm_bank_account" class="col-4 col-form-label">Confirm Bank Account Number <span
                                                class="mandatory">*</span></label>
                                        <div class="col-8">
                                            <input id="confirm_bank_account" class="form-control form-control-user tab-field"
                                                type="text" name="confirm_bank_account" value="{{$user->bank_account??''}}"
                                                autocomplete="Confirm Bank Account" />
                                        </div>
                                    </div>
                                    <div class="form-row mb-4">
                                        <label for="bank_name" class="col-4 col-form-label">Bank Name <span
                                                class="mandatory">*</span></label>
                                        <div class="col-8">
                                            <input id="bank_name" class="form-control form-control-user tab-field"
                                                type="text" name="bank_name" value="{{$user->bank_name??''}}"
                                                autocomplete="Bank Name" />
                                        </div>
                                    </div>
                                    <div class="form-row mb-4">
                                        <label for="bank_ifsc" class="col-4 col-form-label">IFSC Code <span
                                                class="mandatory">*</span></label>
                                        <div class="col-8">
                                            <input id="bank_ifsc" class="form-control form-control-user tab-field"
                                                type="text" name="bank_ifsc" value="{{$user->bank_ifsc??''}}"
                                                autocomplete="IFSC Code" />
                                        </div>
                                    </div>


                                </div>
                                <div class="d-flex">
                                    <button type="button" class="btn btn-dark prev-step ml-1"
                                        data-step="3">Previous</button>
                                    <button type="button" class="btn btn-dark next-step ml-1"
                                        data-step="5">Next</button>
                                </div>
                            </div>






                            <!-- Step 5 -->
                            <div class="tab-pane fade" id="nav-step5" role="tabpanel" aria-labelledby="nav-step5-tab">
                                <div class="panel">
                                    <div class="form-row mb-4">
                                        <label for="name" class="col-4 col-form-label">Upload PAN <span
                                                class="mandatory">*</span></label>
                                        <div class="col-8">
                                            <div class="custom-file-upload">
                                                <label for="file-upload"
                                                    class="custom-file-label form-control-user">Choose
                                                    File</label>
                                                <input id="file-upload" type="file"
                                                    class="form-control form-control-user" name="upload_pan">
                                            </div>
                                            
                                        </div>
                                        @if(!empty($upload_pan->file_path))
                                        <image src='{{url('/')}} {{Storage::url($upload_pan->file_path)}}' width="70" height="70">
                                        @endif
                                    </div>
                                    <div class="form-row mb-4">
                                        <label for="name" class="col-4 col-form-label">Upload GSTIN </label>
                                        <div class="col-8">
                                            <div class="custom-file-upload">
                                                <label for="file-upload2"
                                                    class="custom-file-label form-control-user">Choose
                                                    File</label>
                                                <input id="file-upload2" type="file"
                                                    class="form-control form-control-user" name="upload_gstin">
                                            </div>
                                        </div>
                                        @if(!empty($upload_gstin->file_path))
                                        <image src='{{url('/')}} {{Storage::url($upload_gstin->file_path)}}' width="70" height="70">
                                        @endif
                                    </div>
                                    <input type="hidden" name="status"value="draft">
                                    <div class="form-row mb-4">
                                        <label for="name" class="col-4 col-form-label">Upload MSME Certificate </label>
                                        <div class="col-8">
                                            <div class="custom-file-upload">
                                                <label for="file-upload3"
                                                    class="custom-file-label form-control-user">Choose
                                                    File</label>
                                                <input id="file-upload3" type="file"
                                                    class="form-control form-control-user" name="upload_msme_certificate">
                                            </div>
                                        </div>
                                        @if(!empty($upload_msme_certificate->file_path))
                                        <image src='{{url('/')}} {{Storage::url($upload_msme_certificate->file_path)}}' width="70" height="70">
                                        @endif
                                    </div>
                                    <div class="form-row mb-4">
                                        <label for="name" class="col-4 col-form-label">Upload Cancelled Cheque <span
                                                class="mandatory">*</span></label>
                                        <div class="col-8">
                                            <div class="custom-file-upload">
                                                <label for="file-upload4"
                                                    class="custom-file-label form-control-user">Choose
                                                    File</label>
                                                <input id="file-upload4" type="file"
                                                    class="form-control form-control-user" name="upload_cancelled_cheque">
                                            </div>
                                        </div>
                                        @if(!empty($upload_cancelled_cheque->file_path))
                                        <image src='{{url('/')}} {{Storage::url($upload_cancelled_cheque->file_path)}}' width="70" height="70">
                                        @endif
                                    </div>
                                    <div class="form-row mb-4">
                                        <label for="name" class="col-4 col-form-label">Upload Exemption Certificate
                                        </label>
                                        <div class="col-8">
                                            <div class="custom-file-upload">
                                                <label for="file-upload5"
                                                    class="custom-file-label form-control-user">Choose File</label>
                                                <input id="file-upload5" type="file"
                                                    class="form-control form-control-user" name="upload_exemption_certificate">
                                            </div>
                                        </div>
                                        @if(!empty($upload_exemption_certificate->file_path))
                                        <image src='{{url('/')}} {{Storage::url($upload_exemption_certificate->file_path)}}' width="70" height="70">
                                        @endif
                                    </div>

                                    <div class="form-row mb-4">
                                        <label for="name" class="col-4 col-form-label">Upload Other Documents </label>
                                        <div class="col-8 d-flex uploadfileSec">
                                            <div class="col-md-5 pl-0">
                                                <input type="text" class="form-control form-control-user"
                                                    placeholder="Enter File Name" name="file_name[]">
                                            </div>
                                            <div class="col-md-6 ms-2">
                                                <div class="custom-file-upload">
                                                    <label for="file-upload"
                                                        class="custom-file-label form-control-user">Choose File</label>
                                                    <input id="file-upload" type="file"
                                                        class="form-control form-control-user" name="upload_file[]">
                                                </div>
                                            </div>
                                            <div class="col-md-1">
                                                <a href="#" class="btn btn-success btn-circle " id="addMoreBtn"><i
                                                        class="fas fa-plus"></i></a>

                                            </div>
                                        </div>
                                        <div id="fileUploadContainer" class="mt-4 offset-4 col-8"></div>
                                    </div>

                                </div>
                                <div class="d-flex">
                                    <button type="button" class="btn btn-dark prev-step ml-1"
                                        data-step="4">Previous</button>
                                    <button type="button" class="btn btn-dark next-step ml-1"
                                        data-step="6">Next</button>
                                </div>
                            </div>

                            <!-- Step 5 -->

                            <!-- Step 6 -->
                            <div class="tab-pane fade" id="nav-step6" role="tabpanel" aria-labelledby="nav-step6-tab">

                                <div class="panel">
                                    <div class="row">
                                        <!-- <p >
                  Please read and review the <a href="" target="_blank"><strong>Service Level Agreement (SLA)</strong></a> carefully. 
                  By clicking 'Accept,' you agree to the terms and conditions outlined within, including the specified performance metrics and service expectations.
                  </p> -->
                                        <div id="section1" class="ml-5 agreement-scroll">
                                            <p>
                                                Please read and review the Service Level Agreement (SLA) carefully.
                                                By clicking 'Accept,' you agree to the terms and conditions outlined
                                                within, including the specified performance metrics and service
                                                expectations.
                                            </p>
                                            <h3>Service Level Agreement (SLA)</h3>

                                            <div class="mb-5">Lorem Ipsum</div>
                                            <div class="mb-5">Lorem Ipsum</div>
                                            <div class="mb-5">Lorem Ipsum</div>
                                            <div class="mb-5">Lorem Ipsum</div>
                                            <div class="mb-5">Lorem Ipsum</div>
                                            <div class="mb-5">Lorem Ipsum</div>
                                            <div class="mb-5">Lorem Ipsum</div>
                                            <div class="mb-5">Lorem Ipsum</div>

                                            <div class="form-row mb-4">
                                                <div class="col-12">
                                                    <input id="agreeCheckbox" class="inline tab-field" type="checkbox" name="name"
                                                        autocomplete="Phone Number">
                                                    I Accept all your Terms & Conditions

                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="d-flex justify-content-end m-2">
                                        
                                            <button type="submit" class="btn btn-info ml-1">Submit</button>
                                    </div>
                                    <!-- Horizontal Rule -->
                                    <hr>
                                </div>
                                <!-- <div class="d-flex justify-content-end"> -->
                                <div class="d-flex">
                                    <button type="button" class="btn btn-dark prev-step" data-step="5">Previous</button>
                                </div>
                            </div>
                            <div class="justify-content-center text-center m-2">
                                <div class="required-validation">
                                </div>
                            </div>

                            <div class="d-flex justify-content-end m-2">
                                <button type="submit" class="btn btn-info ml-1">Save as Draft</button>
                            </div>
                            <!-- Step 6 -->
                        </div>

                </div>
                </form>
            </div>
        </div>
    </div>




    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <!-- jQuery for mobile number country selection dropdown
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
-->
    <!-- Popper.js 
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
 Bootstrap JS 
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
-->
    <script>
    // function openCity(evt, cityName) {
    //   var i, x, tablinks;
    //   x = document.getElementsByClassName("city");
    //   for (i = 0; i < x.length; i++) {
    //     x[i].style.display = "none";
    //   }
    //   tablinks = document.getElementsByClassName("tablink");
    //   for (i = 0; i < x.length; i++) {
    //     tablinks[i].className = tablinks[i].className.replace(" w3-border-red", "");
    //   }
    //   document.getElementById(cityName).style.display = "block";
    //   evt.currentTarget.firstElementChild.className += " w3-border-red";
    // }
    $(document).ready(function() {
        //------------function for progress bar-------------
        /* commented by ag 4-Jan
         $(".next-step").click(function() {
             var nextStep = $(this).data("step");
             $(".nav-link").removeClass("active");
             $(`#nav-step${nextStep}-tab`).addClass("active");
             $(".tab-pane").removeClass("show active");
             $(`#nav-step${nextStep}`).addClass("show active");

             // Update progress bar
             var progressPercentage = (nextStep / 6) * 100;
             $(".progress-bar").css("width", `${progressPercentage}%`);
             $(".progress-bar").text(`Step ${nextStep} of 6`);
         }); */
        $('.nav-tabs a').on('click', function(e) {
            // alert("Please complete previous step!");
            // return false;
            e.preventDefault(); // Prevent default tab change
            e.stopPropagation();
        });

        $(".prev-step").click(function() {
            var prevStep = $(this).data("step");
            $(".nav-link").removeClass("active");
            $(`#nav-step${prevStep}-tab`).addClass("active");
            $(".tab-pane").removeClass("show active");
            $(`#nav-step${prevStep}`).addClass("show active");

            // Update progress bar
            var progressPercentage = (prevStep / 6) * 100;
            $(".progress-bar").css("width", `${progressPercentage}%`);
            $(".progress-bar").text(`Step ${prevStep} of 6`);
        });

        /** added by ag 4-Jan, code to disable next btn */
        $('.next-step').on('click', function(e) {
            e.preventDefault();

            // Get current step
            const currentStep = $(this).closest('.tab-pane');
            const stepFields = currentStep.find('.tab-field');
            let valid = true;

            // Validate fields in the current step
            stepFields.each(function() {
                console.log("$(this).val()", $(this))
                if ($(this).val().trim() === '') {
                    valid = false;
                    $(this).addClass('is-invalid'); // Highlight invalid fields
                } else {
                    $(this).removeClass('is-invalid');
                }
            });

            if (valid) {
                // Move to the next tab if all fields are valid
                const nextTab = currentStep.next('.tab-pane');
                if (nextTab.length) {
                    // currentStep.removeClass('active');
                    // nextTab.addClass('active');

                    var nextStep = $(this).data("step");
                    $(".nav-link").removeClass("active");
                    $(`#nav-step${nextStep}-tab`).addClass("active");
                    $(".tab-pane").removeClass("show active");
                    $(`#nav-step${nextStep}`).addClass("show active");

                    // Update progress bar
                    var progressPercentage = (nextStep / 6) * 100;
                    $(".progress-bar").css("width", `${progressPercentage}%`);
                    $(".progress-bar").text(`Step ${nextStep} of 6`);


                } else {
                    alert('This is the last step!');
                }
            } else {
                //alert('Please fill in all required fields.');
                return false;
            }
        });


        //-----------------Agree checkbox-------------
        $('#agreeCheckbox').change(function() {

            if ($(this).prop('checked')) {
                $('#submitBtn').prop('disabled', false);
            } else {
                $('#submitBtn').prop('disabled', true);
            }
        });

        //-------------Add/file uploads---------
        $('#addMoreBtn').click(function(e) {
            e.preventDefault();
            const newField = `
                            <div class="d-flex form-group ">                          
                              <div class="col-md-5 pl-0">                                
                                <input  type="text" class="form-control form-control-user tab-field" placeholder="Enter File Name" >
                              </div>
                              <div class="col-md-6 ">
                                <div class="custom-file-upload">
                                  <label for="file-upload" class="custom-file-label form-control-user">Choose File</label>
                                    <input id="file-upload" type="file" class="form-control form-control-user tab-field">
                                </div>
                              </div>
                              <div class="col-md-1">
                               <a href="#" class="btn btn-warning btn-circle removeBtn" id="removeBtn"><i class="fas fa-minus"></i> </a>
                              </div>                            
                            </div>
        
        `;
            $('#fileUploadContainer').append(newField);
        });

        // Function to remove a file upload field
        $('#fileUploadContainer').on('click', '.removeBtn', function(e) {
            e.preventDefault();
            $(this).closest('.form-group').remove();
        });
    });
    </script>

</x-app-layout>
