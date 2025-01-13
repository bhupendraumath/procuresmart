<x-app-layout>
    
         <div class="container mt-5"> <!-- -->
            <div class="row">
                <!-- User Details Card -->
                <div class="col-md-6">
                    <div class="card">
                        <div class="card-header text-center">
                            <h5>Account Details</h5>
                        </div>
                        <div class="card-body">
                            <ul class="list-group">
                                <li class="list-group-item"><strong>Name:</strong> John Doe</li>
                                <li class="list-group-item"><strong>Email:</strong> vendor0@gmail.com</li>
                                <li class="list-group-item"><strong>Mobile Number:</strong> 9012419990</li>
                                <li class="list-group-item"><strong>Registration Date:</strong> December 18, 2024</li>
                            </ul>
                        </div>
                    </div>
                </div>

                <!-- Success Message Alert -->
                <div class="alert alert-success text-center col-md-5 m-2" role="alert">
                    <img src="{{ asset('assets/img/tick-Animation.gif')}}" alt="Success" class="success-image">
                    <h4 class="alert-heading">Registration Successful!</h4>
                    <p>Your application is currently under review. You will be notified via email once the approval process is completed.</p>
                </div>
             </div><!---->
        </div> 
   
</x-app-layout>