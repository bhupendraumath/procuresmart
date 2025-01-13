<x-guest-layout>
    <div id="layout-content" class="selected no-navbar" role="main">
        <section class="main-section vendor-page">
            <div class="powered">
                <span><p> © 2024-2030 SMACON. All Rights Reserved | Kochi, India</p><span>
                <span>Powered by <a href="https://www.smacontech.com/" target="_blank"> <img src="http://64.227.153.33/public/assets/img/smacon-ico.png" data-src-small="0" > SMACON </a> </span>
            </div>
            <div class="login-section">
                <div class="login-wrapper">
                    <img src="http://64.227.153.33/public/assets/img/logodark.png" data-src-small="0" id="logo" alt="Logo">
                   
                    <div class="redirect-wrapper" id="loginsection">
                        <div class="p-5">
                            <div class="text-center">
                                <h1 class="h4 text-gray-900 mb-4"> Vendor Management Systems</h1>
                            </div>
                            <form method="POST"  class="user"> @csrf
                                
                            <div class="form-group">
                                    <input type="text" name="gstin" class="form-control form-control-user" id="gstin" placeholder="Enter GSTIN/User Name">
                                    @error('gstin')
                                    <div class="alert alert-danger mt-1 mb-1">{{ $message }}</div>
                                    @enderror
                                </div>
                            
                            <div class="form-group">
                                <select id="location" name="location" class="form-select form-control form-control-user" aria-label="select location" placeholder="Location">
                                    <option selected>Location</option>
                                    <option value="kerala">Kerala</option>
                                    <option value="gujarat">Gujarat</option>
                                   
                                </select>
                                </div>
                                <div class="form-group">
                                    <input type="text" name="password" class="form-control form-control-user" id="exampleInputPassword" placeholder="Enter CAPTCHA">
                                    @error('password')
                                    <div class="alert alert-danger mt-1 mb-1">{{ $message }}</div>
                                    @enderror
                                </div>
                              
                                <div class="form-group">
                                    <div class="custom-control custom-checkbox small">
                                        <input type="checkbox" class="custom-control-input" id="customCheck">
                                        <label class="custom-control-label" for="customCheck">Remember
                                            Me</label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <input type="button" value="Proceed" class="btn btn-primary btn-user btn-block proceed">
                                    <div class="mt-3">
                                        <a href="{{ route('vendor.creation') }}" >Enroll as a vendor</a>
                                    </div>
                                </div>
                            </form>
                            <hr>

                            <!-- <div class="text-center">
                            <a class="small" href="{{ route('password.request') }}">Forgot Password?</a>
                            </div>
                            <div class="btnfooter"> <a class="small" href="{{route('vendor.creation')}}">Enroll as a vendor</a>
                            </div> -->
                        </div>
                    </div>    
        <div id="passwordsection" class="d-none">    
            <div class="p-1" >
            <!-- --------------------- start Tab with Underline ---------------- -->
              <!-- <div class="card">
                <div class="card-body"> -->
                <div class="row mb-3">
                    <form   class="user">
                        <div class="form-group user" >
                        <input type="text" name="password" class="form-control form-control-user" id="exampleInputPassword" value="GSTIN :shd13782dhfj" >
                        </div>
                        <div class="form-group" >
                        <input type="text" name="password" class="form-control form-control-user" id="exampleInputPassword" value="Kerala" >
                        </div>
                        <ul class="nav nav-underline p-5" id="myTab" role="tablist">
                            <li class="nav-item" id="otptab">
                            <a class="nav-link active" id="active-tab" data-bs-toggle="tab" href="#active" role="tab" aria-controls="active" aria-expanded="true">
                                <span>Login with OTP</span>
                            </a>
                            </li>
                            <li class="nav-item" id="passwordtab">
                            <a class="nav-link" id="link1-tab" data-bs-toggle="tab" href="#link1" role="tab" aria-controls="link1">
                                <span>Login with password</span>
                            </a>
                            </li>
                        </ul>
                    <div class="tab-content tabcontent-border " id="myTabContent">
                        <div role="tabpanel" class="tab-pane fade show active" id="active" aria-labelledby="active-tab">

                                <fieldset class=" row">
                                <!-- <legend class="col-form-legend col-sm-2">Radios</legend> -->
                                <div class="col-sm-12">
                                    <div class="form-group">
                                    <label class="form-check-label">
                                        <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios1" value="option1" checked>
                                        Send an OTP to the mobile No:XXXXXX392
                                    </label>
                                    </div>
                                    <div class="form-group">
                                    <label class="form-check-label">
                                        <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios2" value="option2">
                                        Send an OTP to the email mxxxxxxxx@gmail.com
                                    </label>
                                    </div>       
                                </div>
                                </fieldset>
                                <a href="#" id="sendotp" class="btn btn-primary btn-user ">Send OTP</a>
                                <!-- <button id="sendotp"  class="btn btn-primary btn-user ">Send OTP</button> -->
                                <div class="card-header d-none" id="getotp"> 
                                    <div class="p-2" id="lwotp"> 
                                        <div> <span>A code has been sent to</span> <small id="maskedNumber">*******9897</small> </div>
                                        <div id="otp" class="inputs d-flex flex-row justify-content-center mt-2">
                                            <input class="m-2 text-center form-control rounded" type="text" id="first" maxlength="1" />
                                            <input class="m-2 text-center form-control rounded" type="text" id="second" maxlength="1" />
                                            <input class="m-2 text-center form-control rounded" type="text" id="third" maxlength="1" />
                                            <input class="m-2 text-center form-control rounded" type="text" id="fourth" maxlength="1" />
                                        </div>
                                        <div class="mt-4">
                                            <button id="validateBtn" class="btn btn-info mt-1">Validate</button>
                                        </div>
                                        <!-- <small class="form-text text-green">Validate MSG</small> -->
                                    </div> 
                                </div>
                                
                            </div>       
                            <!-- <form method="POST" class="user"> @csrf
                                    <div class="form-group mb-3" id="otpinput">
                                        <input type="text" name="password" class="form-control form-control-user" id="exampleInputPassword" placeholder="Enter 4 digit OTP">
                                        @error('password')
                                        <div class="alert alert-danger mt-1 mb-1">{{ $message }}</div>
                                        @enderror
                                    </div>
                                </form> -->
                            </div>
                            <div class="tab-pane fade" id="link1" role="tabpanel" aria-labelledby="link1-tab">
                            
                                <div class="form-group" >
                                    <input type="text" name="password" class="form-control form-control-user" id="exampleInputPassword" placeholder="Enter Password">
                                    @error('password')
                                    <div class="alert alert-danger mt-1 mb-1">{{ $message }}</div>
                                    @enderror
                                </div>
                            </div>                    
                        </div>
                  </div>
                    <div class="form-group" >
                        <input type="submit" value="Login" id="otplogin" class="btn btn-primary btn-user btn-block disabled" >
                    </div>   
                </form>
                </div>
            <!-- </div>
        </div> -->
  <!------------------------------->
                               
                                <hr>
                            </div>
                        </div>
                </div>
            </div>
        </section>
    </div>
    <!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>   -->
    <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
    <script type="text/javascript">
        $(document).ready(function() 
        {
         //   $('#otpinput').hide();
        $(document).on('click', '.proceed', function(e) 
        {
            var gstin=$('#gstin').val();
            var location=$('#location').val();
            alert(gstin);
                 $('#passwordsection').removeClass("d-none");
                 $('#loginsection').addClass("d-none");
                 $.ajax({
                        type: 'POST',
                        url:"{{ route('vendor.vendorgst') }}",
                        data: {
                            "gst":gstin,                            
                        },
                        headers: {
                            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                                },
                        success: function (data) {
                            if(data)
                            {
                               alert(data); 
                                  
                               // document.getElementById("errorspan").innerHTML="Reference number already exists !";                          
                            }else
                            {
                                
                               // document.getElementById("errorspan").innerHTML="";     
                            }

                        },
                        error: function (error) {                    
                            alert("Error.");
                        }
                    });
        });
       
        $(document).on('click', '#sendotp', function(e) 
        {
            $('#getotp').removeClass("d-none");
                
        });
        $(document).on('click', '#validateBtn', function(e) 
        {
            $('#otplogin').removeClass("disabled");
                
        });
        $('a[data-bs-toggle="tab"]').on('shown.bs.tab', function (e) {
        var targetTab = $(e.target).attr('href'); // Get the href of the activated tab
        
        if (targetTab === '#link1') {
          
            $('#getotp').addClass("d-none");// Show the additional div for Tab 1
        } else {
         
        }
      });
        
    
    });
    </script>
</x-guest-layout>
