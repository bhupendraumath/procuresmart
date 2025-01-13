
<x-app-layout>
 <div class="card">
 <header class="page-header page-header-compact page-header-light border-bottom bg-white mb-4">
                        <div class="container-xl px-4">
                            <div class="page-header-content">
                                <div class="row align-items-center justify-content-between pt-3">
                                    <div class="col-auto mb-3 ">
                                        <h2 class="page-header-title"><i class="fas fa-fw fa-user-tie"></i>  My Account </h2>                                       
                                    </div>
                                </div>
                            </div>
                        </div>
                    </header>
                    <!-- Main page content -->
                    <div class="container-xl px-4 mt-4">                        
                        <nav class="nav nav-borders">
                            <a class="nav-link active ms-0" href="">Profile</a>                          
                            <a class="nav-link" href="{{route('vendor.security')}}">Security</a>
                          </nav>
                        <hr class="mt-0 mb-4">
                        <div class="row">
                              
                            <div class="col-xl-12">
                                <!-- Account details card-->
                                <div class="card mb-4">
                                    <div class="card-header">Profile </div>
                                    <div class="card-body">
                                        <!--Vertical tabs-->
                                        <div class="container">  
                                            <div class="row">
                                                <div class="col-md-3 mb-3">
                                                    <ul class="nav  flex-column" id="myTab" role="tablist">
                                                        <li class="nav-item">
                                                            <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Profile Details</a>
                                                        </li>
                                                        <li class="nav-item">
                                                            <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Company Details</a>
                                                        </li>
                                                        <li class="nav-item">
                                                            <a class="nav-link" id="contact-tab" data-toggle="tab" href="#contact" role="tab" aria-controls="contact" aria-selected="false">Address Details</a>
                                                        </li>
                                                        <li class="nav-item">
                                                            <a class="nav-link" id="billing-tab" data-toggle="tab" href="#billing" role="tab" aria-controls="billing" aria-selected="false">Indian Regulatory Details</a>
                                                        </li>
                                                        <li class="nav-item">
                                                            <a class="nav-link" id="document-tab" data-toggle="tab" href="#document" role="tab" aria-controls="document" aria-selected="false">Documents</a>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <!-- /.col-md-4 -->
                                                <div class="col-md-9">
                                                    <div class="tab-content" id="myTabContent">
                                                        <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                                                            <h2>Profile Details</h2>
                                                            <form class="user">
                                                            <div class="row mb-4">
                                                              <label for="name" class="col-4 col-form-label">Title<span class="mandatory">*</span></label>
                                                              <div class="col-8">
                                                              <select id="title" class="form-control form-control-user">
                                                                  <option value="Company" selected>Company</option>
                                                                  <option value="Mr.">Mr.</option>
                                                                  <option value="Mr. and Mrs.">Mr. and Mrs.</option>
                                                                  <option value="Ms.">Ms.</option>
                                                              </select>
                                                              </div>                    
                                                            </div>              
                                                            <div class="row mb-4">
                                                              <label for="name" class="col-4 col-form-label">Vendor Name <span class="mandatory">*</span></label>
                                                              <div class="col-8">
                                                                  <input id="name" class="form-control form-control-user" type="text" name="name" value="Popular Agro Ltd"   />
                                                              </div>                    
                                                            </div>
                                                              <div class="form-row mb-4">                
                                                                <label for="name" class="col-4 col-form-label">Vendor Category<span class="mandatory">*</span></label>
                                                                <div class="col-8">
                                                                <select id="inputState" class="form-control form-control-user">
                                                                  <!-- <option>Choose...</option> -->
                                                                  @foreach ($materialgroup as  $group)
                                                                        <option value="{{$group->code}}">{{$group->code}}-{{$group->name}}</option>
                                                                    @endforeach
                                                                </select>
                                                                </div> 
                                                              </div>                       
                                                            <!-- <div class="row ">  </div>
                                                              <div class="row mb-4"></div> -->
                                                              <div class="form-row mb-4">  
                                                                <label for="name" class="col-4 col-form-label">Location<span class="mandatory">*</span></label>
                                                                  <div class="col-8">
                                                                      <select id="inputState" class="form-control form-control-user">
                                                                     
                                                                      <option selected>Kerala</option>
                                                                      <option>Gujarat</option>
                                                                      
                                                                    </select>
                                                                  </div>                
                                                                </div>
                                                                
                                                                <div class="row mb-4">
                                                                  <label for="name" class="col-4 col-form-label">Mobile Number<span class="mandatory">*</span></label>
                                                                  <div class="col-8">
                                                                      <input id="name" class="form-control form-control-user" type="text" name="name" value="91+ 7012439990"  autocomplete="Vendor Name" />
                                                                  </div>                    
                                                                </div>
                                                                <div class="row mb-4">
                                                                  <label for="name" class="col-4 col-form-label">Email Address<span class="mandatory">*</span></label>
                                                                    <div class="col-6">
                                                                      <input id="name" class="form-control form-control-user" type="text" name="name" value="vendor@gmail.com"  autocomplete="Vendor Name" />
                                                                      <small class="form-text text-muted">We'll never share your email with anyone else.</small>
                                                                    </div> 
                                                                    <div class="form-group text-left col-md-2">
                                                                        <div >
                                                                          <button id="emailotp" class="btn btn-secondary mt-1">Send OTP</button>
                                                                        </div>
                                                                    </div>                   
                                                                </div>
                                                                <div class="row d-none" id="emailotpdiv">
                                                                    <div class="col-md-4 " >
                                                                    </div>
                                                                    <div class="col-md-6 card-header p-2 my-2 py-2" >
                                                                      <div><span>A code has been sent to</span> <small id="maskedEmail">*******@gmail.com</small></div>
                                                                      <div id="otp" class="  inputs d-flex flex-row justify-content-center mt-1">
                                                                          <input class="m-2 text-center form-control rounded" type="text" id="first" maxlength="1">
                                                                          <input class="m-2 text-center form-control rounded" type="text" id="second" maxlength="1">
                                                                          <input class="m-2 text-center form-control rounded" type="text" id="third" maxlength="1">
                                                                          <input class="m-2 text-center form-control rounded" type="text" id="fourth" maxlength="1">
                                                                      </div>
                                                                      <div class="mt-2">
                                                                          <button id="validateEmail" class="btn  btn-dark">Verify OTP</button>
                                                                      </div>  
                                                                    </div>
                                                                    <div class="col-md-2 " >
                                                                    </div>
                                                                </div>
                                                                          <!-- Save changes button-->
                                                                <div class="d-flex justify-content-end">                                                              
                                                                  <button type="submit" class="btn btn-primary ml-1">Save</button>
                                                                </div>
                                                            </form>
                                                        </div>
                                                        <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                                                            <h2>Company Profile</h2>
                                                            <form class="user">              
                                                              
                                                              <div class="row mb-4">
                                                                <label for="name" class="col-4 col-form-label">Contact Person Name <span class="mandatory">*</span></label>
                                                                <div class="col-8">
                                                                    <input id="name" class="form-control form-control-user" type="text" name="name" value="Anil Kumar"  autocomplete="Vendor Name" />
                                                                </div>                    
                                                              </div>
                                                              <div class="row mb-4">
                                                                <label for="name" class="col-4 col-form-label">Designation <span class="mandatory">*</span></label>
                                                                <div class="col-8">
                                                                    <input id="name" class="form-control form-control-user" type="text" name="name" value="Director"  autocomplete="Vendor Name" />
                                                                </div>                    
                                                              </div>
                                                                <div class="row mb-4">
                                                                  <label for="name" class="col-4 col-form-label">MSME Category</label>
                                                                  <div class="col-8">                  
                                                                    <select id="inputState" class="form-control form-control-user">
                                                                      <option selected>Micro Enterpriser</option>
                                                                      <option>Small Enterprise</option>
                                                                      <option selected="">Medium Enterprise</option>                    
                                                                    </select> 
                                                                  </div>
                                                                </div>
                                                                <div class="row mb-4">
                                                                  <label for="name" class="col-4 col-form-label">Payment Terms</label>
                                                                  <div class="col-8">                  
                                                                  <select class="form-control  form-control-user" id="paymentTerms">
                                                                    <option value="" disabled selected>Select Payment Terms</option>
                                                                    <option value="Net30">Net 30</option>
                                                                    <option value="Net60">Net 60</option>
                                                                    <option value="2/10 Net 30">2% Discount if Paid in 10 Days, Due in 30 Days</option>
                                                                    <option value="EOM">End of the Month</option>
                                                                    <option value="15days">15 Days from Invoice Date</option>
                                                                    <option value="DueOnReceipt">Due on Receipt</option>
                                                                    <option value="COD">Cash on Delivery</option>
                                                                    <option value="Quarterly">Quarterly Payments</option>
                                                                    <option value="AdvancePayment">Advance Payment Required</option>
                                                                    <option value="Monthly">Monthly Payments</option>                    
                                                                  </select> 
                                                                  </div>
                                                                </div>
                                                                <div class="row mb-4">
                                                                  <label for="name" class="col-4 col-form-label">Payment Method</label>
                                                                  <div class="col-8">                  
                                                                  <select class="form-control  form-control-user" id="paymentTerms">
                                                                      <option value="T" >T-Bank Transfer</option>                                        
                                                                  </select>  
                                                                                                                  </div>
                                                                </div>
                                                              <div class="d-flex justify-content-end">                                                              
                                                                <button type="submit" class="btn btn-primary ml-1">Save</button>
                                                              </div>
                                                            </form>
                                                        </div>
                                                        <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">
                                                            <h2>Address Details</h2>
                                                            <form class="user">
                                                          <div class="row mb-4">
                                                            <label class="col-4 col-form-label">Address line 1 <span class="mandatory">*</span></label>
                                                            <div class="col-8">
                                                              <input type="text" id="address" class="form-control form-control-user" autocomplete="Address">
                                                            </div>
                                                          </div>
                                                          <div class="row mb-4">
                                                            <label class="col-4 col-form-label">Address line 2</label>
                                                            <div class="col-8">
                                                              <input type="text" id="customerid" class="form-control form-control-user">
                                                            </div>
                                                          </div>
                                                          <div class="row mb-4">
                                                            <label class="col-4 col-form-label">Address line 3</label>
                                                            <div class="col-8">
                                                              <input type="text" id="customerid" class="form-control form-control-user">
                                                            </div>
                                                          </div>


                                                          <div class="row mb-4">
                                                            <label class="col-4 col-form-label">Country</label>
                                                            <div class="col-8">
                                                            <select class="form-control form-control-user">
                                                                <option value="IN">India</option>
                                                              </select>
                                                            </div>
                                                          </div>
                                                          <div class="row mb-4">
                                                            <label class="col-4 col-form-label">State</label>
                                                            <div class="col-8">
                                                            <select class="form-control form-control-user">
                                                                <option value="KL">Kerala</option>
                                                              </select>
                                                            </div>
                                                          </div>
                                                          <div class="row mb-4">
                                                            <label class="col-4 col-form-label">District</label>
                                                            <div class="col-8">
                                                              <input type="text" class="form-control form-control-user" value="Ernakulam">
                                                            </div>
                                                          </div>
                                                        
                                                          <div class="row mb-4">
                                                            <label class="col-4 col-form-label">City</label>
                                                            <div class="col-8">
                                                              <input type="text" class="form-control form-control-user">
                                                            </div>
                                                          </div>
                                                          <div class="row mb-4">
                                                            <label class="col-4 col-form-label">Pin</label>
                                                            <div class="col-8">
                                                            <input type="text" class="form-control form-control-user">
                                                            </div>
                                                          </div>
                                                          
                                                          <div class="d-flex justify-content-end">                  
                                                              <button type="button" class="btn btn-primary  ml-1" >Save</button>
                                                          </div>
                                                        </form>
                                                        </div>
                                                        <div class="tab-pane fade" id="billing" role="tabpanel" aria-labelledby="billing-tab">
                                                            <h2>Indian Regulatory Details</h2>
                                                            <form class="user">
                                                              <div class="panel">
                                                              </br>
                                                                <div class="row mb-4">
                                                                  <label for="name" class="col-4 col-form-label">PAN Number <span class="mandatory">*</span></label>
                                                                  <div class="col-8">
                                                                      <input id="phone" class="form-control form-control-user" type="text" name="name" :value="old('phone')"  autocomplete="Phone Number" />
                                                                  </div>

                                                                  <div class="col-12">
                                                                  <small class="form-text text-muted">PAN number must have 10 characters. For eg: AESTG2458A</small>    
                                                                  </div>
                                                              </div>
                                                              
                                                              <div class="row mb-4">
                                                                  <label for="name" class="col-4 col-form-label">GSTIN <span class="mandatory">*</span></label>
                                                                  <div class="col-8">
                                                                      <input id="gstin" class="form-control form-control-user" type="text" name="gstin" :value="old('gstin')"  autocomplete="GSTIN" />
                                                                  </div>                    
                                                              </div>
                                                              <div class="row mb-4">
                                                                  <label for="name" class="col-4 col-form-label">Bank Account Number <span class="mandatory">*</span></label>
                                                                  <div class="col-8">
                                                                      <input id="phone" class="form-control form-control-user" type="text" name="accountnumber" :value="old('phone')"  autocomplete="Phone Number" />
                                                                  </div>                    
                                                              </div>
                                                              <div class="row mb-4">
                                                                  <label for="name" class="col-4 col-form-label">Confirm Bank Account Number <span class="mandatory">*</span></label>
                                                                  <div class="col-8">
                                                                      <input id="phone" class="form-control form-control-user" type="text" name="accountnumber" :value="old('phone')"  autocomplete="Phone Number" />
                                                                  </div>                    
                                                              </div>
                                                              <div class="row mb-4">
                                                                  <label for="name" class="col-4 col-form-label">Bank Name <span class="mandatory">*</span></label>
                                                                  <div class="col-8">
                                                                      <input id="phone" class="form-control form-control-user" type="text" name="accountnumber" :value="old('phone')"  autocomplete="Phone Number" />
                                                                  </div>                    
                                                              </div>
                                                              <div class="row mb-4">
                                                                  <label for="name" class="col-4 col-form-label">IFSC Code <span class="mandatory">*</span></label>
                                                                  <div class="col-8">
                                                                      <input id="phone" class="form-control form-control-user" type="text" name="accountnumber" :value="old('phone')"  autocomplete="Phone Number" />
                                                                  </div>                    
                                                              </div>
                                                              
                                                          </div>
                                                          <div class="d-flex justify-content-end">
                                                                 
                                                                    <button type="button" class="btn btn-primary ml-1" >Save</button>
                                                                </div>
                                                              </form>
                                                        </div>
                                                        <div class="tab-pane fade" id="document" role="tabpanel" aria-labelledby="document-tab">
                                                            <h2>Documents</h2>
                                                            <form class="user">
                                                              <div class="panel">
                                                                      <div class="row mb-4">
                                                                          <label for="name" class="col-4 col-form-label">Upload PAN <span class="mandatory">*</span></label>
                                                                              <div class="col-8">

                                                                              <div class="custom-file-upload">
                                                                                  <label for="file-upload" class="custom-file-label form-control-user">Choose File</label>
                                                                                  <input id="file-upload" type="file" class="form-control form-control-user">
                                                                              </div>
                                                                                  
                                                                              </div>
                                                                      </div>
                                                                      <div class="row mb-4">
                                                                          <label for="name" class="col-4 col-form-label">Upload GSTIN </label>
                                                                              <div class="col-8">
                                                                              <div class="custom-file-upload">
                                                                                  <label for="file-upload" class="custom-file-label form-control-user">Choose File</label>
                                                                                  <input id="file-upload" type="file" class="form-control form-control-user">
                                                                              </div>
                                                                                  
                                                                              </div>
                                                                      </div>
                                                                      <div class="row mb-4">
                                                                          <label for="name" class="col-4 col-form-label">Upload MSME Certificate </label>
                                                                              <div class="col-8">
                                                                              <div class="custom-file-upload">
                                                                                  <label for="file-upload" class="custom-file-label form-control-user">Choose File</label>
                                                                                  <input id="file-upload" type="file" class="form-control form-control-user">
                                                                              </div>
                                                                              </div>
                                                                      </div>
                                                                        <div class="row mb-4">
                                                                          <label for="name" class="col-4 col-form-label">Upload Cancelled Cheque <span class="mandatory">*</span></label>
                                                                              <div class="col-8">
                                                                                <div class="custom-file-upload">
                                                                                    <label for="file-upload" class="custom-file-label form-control-user">Choose File</label>
                                                                                    <input id="file-upload" type="file" class="form-control form-control-user">
                                                                                </div>
                                                                              </div>
                                                                        </div>
                                                                        <div class="row mb-4">
                                                                          <label for="name" class="col-4 col-form-label">Upload Tax Excemption Certificate </label>
                                                                              <div class="col-8">
                                                                                <div class="custom-file-upload">
                                                                                    <label for="file-upload" class="custom-file-label form-control-user">Choose File</label>
                                                                                    <input id="file-upload" type="file" class="form-control form-control-user">
                                                                                </div>
                                                                              </div>
                                                                        </div>
                                                                </div>

                                                                <div class="d-flex justify-content-end">
                                                                        
                                                                        <button type="button" class="btn btn-primary ml-1" >Save</button>
                                                                  </div>

                                                                </form>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- /.col-md-8 -->
                                            </div>
                                        </div>
                                        <!-- /.container -->      
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
</div>
<!-- Content Row -->
  

   
  
   
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
  $(document).ready(function() {
      $("#emailotp").on("click", function(e) {
          e.preventDefault();
          $("#emailotpdiv").removeClass("d-none");
      });
  });
</script>

        <!------------------------------>


</x-app-layout>





                        