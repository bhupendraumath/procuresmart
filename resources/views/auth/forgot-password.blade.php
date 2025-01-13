<x-guest-layout>

<div id="layout-content" class="selected no-navbar" role="main">
        <section class="main-section">
        <div class="powered">
        <span><p> © 2024-2030 SMACON. All Rights Reserved | Kochi, India</p><span> 
        <span>Powered by <a href="https://www.smacontech.com/" target="_blank"> <img src="http://64.227.153.33/public/assets/img/smacon-ico.png" data-src-small="0" > SMACON </a> </span>
        </div>
        <div class="login-section">
            <div class="login-wrapper">
                <img src="http://64.227.153.33/public/assets/img/logodark.png" data-src-small="0" id="logo" alt="Logo">
                <div class="redirect-wrapper">
                    <div class="p-5">
                        <div class="text-center">
                            <h1 class="h4 text-gray-900 mb-4"> Forgot Your Password?
                            </h1>
                            <p>We get it, stuff happens. Just enter your email address below and we'll send you a link to reset your password! </p>
                        </div>
                        <form method="POST" action="{{ route('password.email') }}" class="user">
                        @csrf
                            <div class="form-group">
                                <input type="email" name="email" :value="old('email')" class="form-control form-control-user"
                                    id="exampleInputEmail" aria-describedby="emailHelp"
                                    placeholder="Enter Email Address...">
                            </div>
                            <div class="flex items-center justify-end mt-4">
        
                            <input type="submit" class="btn btn-primary btn-user btn-block" value="Reset Password">
                            
                        </form>
                        <hr>
                        <!-- <div class="text-center">
                            <a class="small" href="register.html">Create an Account!</a>
                        </div> -->
                        <div class="text-center">
                            <a class="small" href="{{ route('login') }}">Already have an account? Login!</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </section>
    </div> 
</x-guest-layout>
