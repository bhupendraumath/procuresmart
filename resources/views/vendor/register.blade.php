<x-guest-layout>
    <div id="layout-content" class="selected no-navbar" role="main">
        <div class="reg-main">
            <section class="signup">
                <div class="row d-flex justify-content-center">
                <div class="col-md-4 p-5"><!-- Basic content -->
                    <div class="basic-content text-left text-white">    
                        <!--<p>Welcome to the Online Vendor Enrollment Portal. This form is designed to streamline the vendor registration process, allowing businesses to establish a formal partnership with your organization:</p>-->
                        <h4 class="text-bold">Online Access Benefits for Vendor</h4>
                        <ul class="list-group">
                            <li><span class="custom-icon">✔</span>Easy Update of Vendor Details</li>
                            <li><span class="custom-icon">✔</span>Centralized Access to RFQs</li> 
                            <li><span class="custom-icon">✔</span>Direct & Streamlined Communication</li>
                            <li><span class="custom-icon">✔</span>Submission of Multiple Quotations</li> 
                            <li><span class="custom-icon">✔</span>Consolidated View of Submitted Quotations</li>
                            <li><span class="custom-icon">✔</span>Receipt of Purchase Orders (POs)</li> 
                            <li><span class="custom-icon">✔</span>Invoice Upload and Advanced Shipping Notices (ASNs)</li>
                            <li><span class="custom-icon">✔</span>Viewing Goods Receipt Notes (GRNs)</li> 
                            <li><span class="custom-icon">✔</span>Comprehensive Payment Tracking</li>
                            <li><span class="custom-icon">✔</span>Improved Efficiency</li> 
                            <li><span class="custom-icon">✔</span>Enhanced Compliance and Reduced Fraud Risk</li>
                        </ul>
                        <!--<p class="alert alert-primary questions" role="alert">Questions? Talk to an expert: <a href="tel:18004207332">1800-400-700</a></p>-->
                    </div> <!-- Basic content -->
                </div>
                    <div class="col-md-5">
                        <div class="card body-reg">                          
                            <article class="card-body px-5">
                                <!-- Basic Details Section -->
                                <h5 class="m-0 text-black text-left py-3">Online Enrollment of Vendor</h5>
                                    <form class="user" >
                                        <div class="form-group text-left"> 
                                            <label>Vendor Name</label>
                                            <input type="text" id="vendorname" name="vendorname" class="form-control form-control-user" placeholder="Name">
                                        </div>
                                        <div class="form-row">                                   
                                            <div class="col form-group text-left">
                                                <label>Supply Plant</label>
                                                <select id="supplyplant" name="supplyplant" class="form-control form-control-user">
                                                <option value="kerala">Kerala</option>
                                                <option value="gujarat">Gujarat</option>                                               
                                                </select>
                                            </div>
                                        </div>
                                        <!-- GST open -->
                                        <div class="card-header mb-3">
                                            <div class="form-check form-check-inline p-3">
                                                <input type="radio" class="form-check-input" name="loginOption" id="otpRadio" value="otp" checked>
                                                <label class="form-check-label" for="otpRadio">I have a GSTIN</label>
                                            </div>
                                            <div class="form-check form-check-inline">
                                                <input type="radio" class="form-check-input" name="loginOption" id="passwordRadio" value="password">
                                                <label class="form-check-label" for="passwordRadio">I do not have GSTIN</label>
                                            </div>
                                            <!-- GSTIN -->
                                            <div class="form-box-wrap mb-1 p-1 was-validated" id="lwotp" style="display: block;">
                                                <div class="form-group text-left">
                                                    <input type="text" name="gstin" id="gstin" class="form-control form-control-user" placeholder="GST Number">
                                                </div>
                                            </div>
                                            <!-- GST Not -->
                                            <div class="form-box-wrap m-1 p-1" id="lwpass" style="display: none;">
                                                <div class="form-group text-left">
                                                    <input type="text"name="username" id="username" class="form-control form-control-user" placeholder="User Name">
                                                </div>
                                            </div>
                                        </div>
                                        <!-- GST close -->
                                        <div class="form-group text-left">
                                            <label>Email Address</label>
                                            <input type="email" id="email" name="email" class="form-control form-control-user" placeholder="Enter your Email Address">
                                            <small class="form-text text-muted">Verfy your email address with OTP  -  <a href="#" id="emailotp">Send OTP</a></small>
                                        </div>
                                        <div class="card-header p-2 my-2 py-2 d-none" id="emailotpdiv">
                                            <div><span>A code has been sent to</span> <small id="maskedEmail">*******@gmail.com</small></div>
                                            <div id="otp" class="inputs d-flex flex-row justify-content-center mt-2">
                                                <input class="m-2 text-center form-control rounded" type="text" id="first" maxlength="1">
                                                <input class="m-2 text-center form-control rounded" type="text" id="second" maxlength="1">
                                                <input class="m-2 text-center form-control rounded" type="text" id="third" maxlength="1">
                                                <input class="m-2 text-center form-control rounded" type="text" id="fourth" maxlength="1">
                                            </div>
                                            <div class="mt-2">
                                                <button id="validateEmail" class="btn  btn-dark">Verify OTP</button>
                                            </div>
                                        </div>
                                        <div class="form-group text-left">
                                            <label>Mobile Number</label>
                                            <input type="text" class="form-control form-control-user" placeholder="Enter your Mobile Number">
                                            <small class="form-text text-muted">Verify your mobile number with OTP  -  <a href="#" id="mobileotp">Send OTP</a></small>
                                        </div>                                     
                                        <div class="p-2 d-none card-header" id="mobileotpdiv">
                                            <div><span>A code has been sent to</span> <small id="maskedNumber">*******9897</small></div>
                                            <div id="otp" class="inputs d-flex flex-row justify-content-center mt-2">
                                                <input class="m-2 text-center form-control rounded" type="text" id="first" maxlength="1">
                                                <input class="m-2 text-center form-control rounded" type="text" id="second" maxlength="1">
                                                <input class="m-2 text-center form-control rounded" type="text" id="third" maxlength="1">
                                                <input class="m-2 text-center form-control rounded" type="text" id="fourth" maxlength="1">
                                            </div>
                                            <div class="mt-2">
                                                <button id="validateMobile" class="btn  btn-dark">Verify OTP</button>
                                            </div>
                                        </div>
                                        <div class="form-group text-left">
                                            <label>Password</label>
                                            <input type="password" id="password" class="form-control form-control-user"  placeholder="Enter a strong password">
                                            <small id="strengthMessage" class="strength-message form-text text-muted"></small>
                                        </div>
                                        <div class="form-group text-left">
                                            <label>Confirm Password</label>
                                            <input type="password" id="confirmPassword" class="form-control form-control-user" placeholder="Re-enter your password">
                                        <div id="passwordMatchMessage" class="error-message"></div>
                                        </div>
                                        <div class="d-flex justify-content-center p-1">
                                            <button type="submit" class="btn btn-primary">Submit</button>
                                        </div>
                                </form>
                            </article>
                            <div class="border-top card-header text-center">Have an account? <a href="{{route('login')}}">Log In</a></div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </div>

    

 

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script>
        $(document).ready(function() {
            $("#emailotp").on("click", function(e) {
                e.preventDefault();
                $("#emailotpdiv").removeClass("d-none");
            });
            $("#mobileotp").on("click", function(e) {
                e.preventDefault();
                $("#mobileotpdiv").removeClass("d-none");
            });
        });

        document.addEventListener("DOMContentLoaded", function() {
        const otpRadio = document.getElementById('otpRadio');
        const passwordRadio = document.getElementById('passwordRadio');
        const lwotp = document.getElementById('lwotp');
        const lwpass = document.getElementById('lwpass');

        // Toggle visibility based on radio button selection
        otpRadio.addEventListener('click', () => {
            lwotp.style.display = 'block';  // Show OTP form
            lwpass.style.display = 'none'; // Hide Password form
        });

        passwordRadio.addEventListener('click', () => {
            lwpass.style.display = 'block'; // Show Password form
            lwotp.style.display = 'none';  // Hide OTP form
        });

        // OTP input behavior
        function OTPInput() {
            const inputs = document.querySelectorAll('#otp > input');
            inputs.forEach((input, index) => {
                input.addEventListener('input', function() {
                    if (this.value.length > 1) this.value = this.value[0];
                    if (this.value !== '' && index < inputs.length - 1) {
                        inputs[index + 1].focus();
                    }
                });

                input.addEventListener('keydown', function(event) {
                    if (event.key === 'Backspace') {
                        this.value = '';
                        if (index > 0) inputs[index - 1].focus();
                    }
                });
            });
        }

        OTPInput();

        // OTP Validation
        const validateBtn = document.getElementById('validateBtn');
        validateBtn.addEventListener('click', function() {
            let otp = '';
            document.querySelectorAll('#otp > input').forEach(input => otp += input.value);
            alert(`Entered OTP: ${otp}`);
        });
    });


    const passwordInput = document.getElementById('password');
        const strengthMessage = document.getElementById('strengthMessage');

        passwordInput.addEventListener('input', () => {
            const password = passwordInput.value;
            const strength = checkPasswordStrength(password);

            // Update the strength message
            if (strength === 'Strong') {
                strengthMessage.textContent = 'Strong password';
                strengthMessage.className = 'strength-message strong';
            } else if (strength === 'Medium') {
                strengthMessage.textContent = 'Medium password - consider adding more special characters or numbers';
                strengthMessage.className = 'strength-message medium';
            } else {
                strengthMessage.textContent = 'Weak password - use at least 8 characters with a mix of letters, numbers, and symbols';
                strengthMessage.className = 'strength-message weak';
            }
        });

        function checkPasswordStrength(password) {
            const strongPattern = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/;
            const mediumPattern = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[A-Za-z\d@$!%*?&]{6,}$/;

            if (strongPattern.test(password)) {
                return 'Strong';
            } else if (mediumPattern.test(password)) {
                return 'Medium';
            } else {
                return 'Weak';
            }
        }

         

    </script>
</x-guest-layout>
