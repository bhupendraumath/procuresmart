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
                                <h1 class="h4 text-gray-900 mb-4"> Hi, 👋 <br>Welcome to Procure Smart                                   </h1>
                            </div>
                            <form method="POST" action="{{ route('login') }}" class="user"> @csrf
                                <div class="form-group">
                                    <input type="email" name="email" class="form-control form-control-user" id="exampleInputEmail" aria-describedby="emailHelp" placeholder="Enter Email Address...">
                                    @error('email')
                                        <div class="alert alert-danger mt-1 mb-1">{{ $message }}</div> <!--code form outside theme-->
                                    @enderror  
                                </div>
                                <div class="form-group">
                                    <input type="password" name="password" class="form-control form-control-user" id="exampleInputPassword" placeholder="Password">
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
                                <input type="submit" value="Login" class="btn btn-primary btn-user btn-block">
                                
                            
                                <!-- <a href="index.html" class="btn btn-google btn-user btn-block">
                                    <i class="fab fa-google fa-fw"></i> Login with Google
                                </a>
                                <a href="index.html" class="btn btn-facebook btn-user btn-block">
                                    <i class="fab fa-facebook-f fa-fw"></i> Login with Facebook
                                </a> -->
                            </form>
                            <hr>
                            <a class="small" href="{{ route('password.request') }}">Forgot Password?</a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
</x-guest-layout>
