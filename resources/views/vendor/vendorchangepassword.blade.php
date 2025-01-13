
<x-app-layout>
 <div class="card">
    <header class="page-header page-header-compact page-header-light border-bottom bg-white mb-4">
        <div class="container-xl px-4">
            <div class="page-header-content">
                <div class="row align-items-center justify-content-between pt-3">
                    <div class="col-auto mb-3 ">
                        <h2 class="page-header-title"> 
                            
                            <i class="fas fa-fw fa-user-tie"></i>  Security </h2>
                        
                    </div>
                </div>
            </div>
        </div>
    </header>
    <!-- Main page content -->
    <div class="container-xl px-4 mt-4">
        <!-- Account page navigation-->
        <nav class="nav nav-borders">
            <a class="nav-link active ms-0" href="{{route('vendor.profile')}}">Profile</a>
            <a class="nav-link" href="{{route('vendor.security')}}">Security</a>
        </nav>
        <hr class="mt-0 mb-4">
        <div class="row">  
            <!----------------->           
            <div class="row">
                <div class="col-lg-8">
                    <!-- Change password card-->
                    <div class="card mb-4">
                        <div class="card-header">Change Password</div>
                        <div class="card-body">
                            <form>
                                <!-- Form Group (current password)-->
                                <div class="mb-3">
                                    <label class="small mb-1" for="currentPassword">Current Password</label>
                                    <input class="form-control" id="currentPassword" type="password" placeholder="Enter current password">
                                </div>
                                <!-- Form Group (new password)-->
                                <div class="mb-3">
                                    <label class="small mb-1" for="newPassword">New Password</label>
                                    <input class="form-control" id="newPassword" type="password" placeholder="Enter new password">
                                </div>
                                <!-- Form Group (confirm password)-->
                                <div class="mb-3">
                                    <label class="small mb-1" for="confirmPassword">Confirm Password</label>
                                    <input class="form-control" id="confirmPassword" type="password" placeholder="Confirm new password">
                                </div>
                                <button class="btn btn-primary" type="button">Save</button>
                            </form>
                        </div>
                    </div>
                    <!-- Security preferences card-->
                    
                </div>
                <div class="col-lg-4">
                    <!-- Two factor authentication card-->
                    <div class="card mb-4">
                        <div class="card-header"></div>
                        <div class="card-body">
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam quidem dolorum doloribus possimus id quod molestias incidunt, rem voluptates sint praesentium magni debitis repellat impedit maiores blanditiis similique autem minus.</p>
                           
                        </div>
                    </div>
                    <!-- Delete account card-->
                   
                </div>
            </div>             
            <!--------end--------->            
        </div>
    </div>
</div>
<!-- Content Row -->
  
<script type="text/javascript">
  $(document).ready(function() {
      
  });
</script>
 <!------------------------------>


</x-app-layout>





                        