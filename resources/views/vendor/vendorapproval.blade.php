<x-app-layout>
<!-- Content Row --> 

   
    <div class="card shadow mb-4">    
        <div class="card-header py-3">
            <div class="row align-items-center justify-content-between ">
                <h3 class="m-2 font-weight-bold text-primary">Vendor Details</h3>
                 <nav class="mt-4 rounded p-1" aria-label="breadcrumb">
                    <ol class="breadcrumb-colorless px-3 py-2 rounded ">
                        <li class="breadcrumb-item"><a href="{{route('vendor.approve')}}">Vendor</a></li>
                        <li class="breadcrumb-item active"><a href="#">Details</a></li>
                    </ol>
                </nav>               
            </div>
        </div>
        <div class="card-body">
            <div class="row">
                <div class="col-md-6">
                    <!-- Default Card Example -->
                    <div class="card mb-2"> 
                          <div class="card-header">
                            Basic Details
                        </div>                      
                        <div class="card-body">
                        <table class="table"  cellspacing="0">
                               <tbody>
                                    <tr> <th>Title</th><td>{{$vendor->title??'-'}}</td></tr>
                                    <tr> <th>Vendor Name</th><td>{{$user->name??'-'}}</td></tr>
                                    <tr> <th >Vendor Category</th><td>{{$vendor->location??'-'}} </td></tr>
                                    <tr> <th> Location</th><td>{{$vendor->title??'-'}}</td></tr>                                    
                                    <tr> <th> Mobile Number</th><td>{{$user->mobile_number??'-'}} </td></tr>  
                                    <tr> <th> Email Address</th><td> {{$user->email??'-'}}</td></tr>                                      
                                </tbody>
                            </table>
                        </div>
                    </div>                
                </div>
                <div class="col-md-6">
                    <!-- Default Card Example -->
                    <div class="card mb-2">
                        <div class="card-header">
                            Address
                        </div> 
                        <div class="card-body">
                        <table class="table"  cellspacing="0">
                               <tbody>
                                   
                                    <tr><th>Address line 1 </td><td >{{$vendor->addressline1??'-'}}</td><tr>
                                    <tr><th>Address line 2</td><td>{{$vendor->addressline2??'-'}} </td>  
                                    <tr><th>Address line 3</td><td>{{$vendor->addressline3??'-'}} </td>                                
                                   <tr> <th>City </th><td>{{$vendor->city??'-'}} </td></tr>                                   
                                   <tr> <th>State</th><td>{{$vendor->state??'-'}}</td></tr> 
                                   <tr> <th>District</th><td>{{$vendor->district??'-'}}</td></tr> 
                                   <tr> <th>Country</th><td>{{$vendor->country_code??'-'}}</td></tr>
                                   <tr> <th >Pin </th><td>{{$vendor->pin??'-'}}</td></tr>
                                                                           
                                </tbody>
                            </table>
                        </div>
                    </div>                
                </div>
            </div>
            <!-- Next row -->
            <div class="row">
                <div class="col-md-6">
                    
                    <div class="card mb-2"> 
                          <div class="card-header">
                            Company Details
                        </div>                      
                        <div class="card-body">
                        <table class="table"  cellspacing="0">
                               <tbody>
                                    <tr> <th>Company Name</th><td>{{$vendor->company_name??'-'}}</td></tr>
                                    <tr> <th> MSME Category</th><td>{{$vendor->msme_category??'-'}}</td></tr> 
                                    <tr> <th >Contact Person Name</th><td>{{$vendor->contant_person_name??'-'}} </td></tr>
                                    <tr> <th> Designation</th><td>{{$vendor->designation??'-'}} </td></tr>
                                    <tr> <th> Mobile Number</th><td>{{$vendor->mobileno??'-'}} </td></tr>  
                                    <tr> <th> Email Address</th><td>{{$vendor->email??'-'}}</td></tr>                                      
                                </tbody>
                            </table>
                        </div>
                    </div>                
                </div>
                <div class="col-md-6">
                    <!-- Default Card Example -->
                    <div class="card mb-2">
                        <div class="card-header">
                            Indian Regulatory Details
                        </div> 
                        <div class="card-body">
                        <table class="table"  cellspacing="0">
                               <tbody>
                                   
                                   <tr> <th>PAN Number: </td><td >{{$vendor->pan_number??'-'}}</td><tr>
                                   <tr> <th>GSTIN :</td><td>{{$vendor->gstin??'-'}} </td>                                
                                   <tr> <th>Bank Account Number :</th><td>{{$vendor->bank_account??'-'}}</td></tr>                                   
                                   <tr> <th>IFSC Code:</th><td>{{$vendor->bank_ifsc??'-'}} </td></tr> 
                                   <tr> <th>Bank Name</th><td>{{$vendor->bank_name??'-'}}</td></tr>
                                   <tr> <th>Payment Terms</th><td>{{$vendor->payment_terms??'-'}}</td></tr>
                                   <tr> <th>Payment Method</th><td>{{$vendor->payment_method??'-'}}</td></tr>                                       
                                </tbody>
                            </table>
                        </div>
                    </div>                
                </div>
            </div>
            
             <!-- Next row -->
             <div class="row">
                <div class="col-md-6">
                    <div class="card mb-2">
                        <div class="card-header">
                            Documents to be verified
                        </div> 
                        <div class="card-body">
                            <table class="table"  cellspacing="0">
                                <tbody>     
                                    <tr><th >Director's Pan</th><td><a href="{{url('/')}} {{Storage::url($upload_pan->file_path)}}"  target="_blank"><i class="fas fa-w fa-eye" aria-hidden="true"></i></a></td><td></td></tr>
                                    <tr><th >GST Details</th><td><a href="{{url('/')}} {{Storage::url($upload_gstin->file_path)}}"  target="_blank"><i class="fas fa-w fa-eye" aria-hidden="true"></i></a></td><td></td></tr>
                                    <tr><th >MSME Certificate </th><td><a href="{{url('/')}} {{Storage::url($upload_msme_certificate->file_path)}}"  target="_blank"><i class="fas fa-w fa-eye" aria-hidden="true"></i></a></td><td></td></tr>
                                    <tr><th >Cancelled Cheque</th><td><a href="{{url('/')}} {{Storage::url($upload_cancelled_cheque->file_path)}}"  target="_blank"><i class="fas fa-w fa-eye" aria-hidden="true"></i></a></td><td></td></tr>
                                </tbody>
                            </table>
                        </div>
                    </div> 
                    <!-- Confirm Modal -->
                    <div class="modal fade" id="confirmationModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel">Confirm Vendor Data</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    Do you want to approve this document ?
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                                    <button type="button" class="btn btn-primary">Confirm</button>
                                </div>
                            </div>
                        </div>
                    </div>
    
                
                </div>
                <div class="col-md-6">                    
                    <div class="card mb-2"> 
                          <div class="card-header">
                            Declarations
                        </div>                      
                        <div class="card-body">
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam quidem dolorum doloribus possimus id quod molestias incidunt, rem voluptates sint praesentium magni debitis repellat impedit maiores blanditiis similique autem minus.</p>
                        </div>
                    </div>                
                </div>                   
            </div>
              
            <!------------------------->
            <div class="row">
                <div class="col-md-12">
                    <div class="card mb-2">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Withholding Tax Information</h6>
                        </div>
                        <div class="card-body ">                            
                            <form class="form-user">
                                <!-- <div class="row"> -->
                                    <div class="table-responsive">
                                        <table class="table table-bordered table-scrollable" id="dynamicTable" width="100%" cellspacing="0">
                                            <thead>
                                            <tr>
                                                <th> </th>
                                                <th>Withholding Tax Type</th>                                        
                                                <th>Liable</th>
                                                <th>Restriction Type</th>
                                                <th>Exemption Number</th>
                                                <th>Exemption From</th>
                                                <th>Exemption To</th>
                                                <th>Exemption Threshold</th>
                                               
                                            </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                <td class="d-flex"><a href="#" class="btn btn-success btn-circle addRow"><i class="fas fa-plus"></i></a><a href="#" class="btn btn-warning btn-circle removeRow"><i class="fas fa-minus"></i> </a></td>
                                                    <td >                                                    
                                                        <select id="inputState" class="form-control form-control-user">
                                                        <option value="1000">4R-Section-194R TDS on Benefits</option>
                                                    </select></td>                                       
                                                    <td> <input id="agreeCheckbox" class="inline" type="checkbox" name="name" autocomplete="Phone Number"></td>
                                                    <td> <select id="inputState" class="form-control form-control-user">
                                                        <option value="Co">Co-Company</option>
                                                    </select></td>
                                                    <td> <input id="" class="form-control form-control-user" type="text" name="accountnumber" :value="old('phone')"  autocomplete="Phone Number" /> </td>                                       
                                                    <td> <input id="" class="form-control " type="date" name="podate" /></td>
                                                    <td> <input id="" class="form-control " type="date" name="podate" /></td>
                                                    <td> <input id="" class="form-control form-control-user" type="text" name="accountnumber" :value="old('phone')"  autocomplete="Phone Number" /></td>
                                                    
                                                   
                                                </tr>
                                            </tbody>
                                        </table>                            
                                    </div> 

                                    <div class="form-row mb-4 mt-3">                
                                        <label for="name" class="col-4 col-form-label">Upload Tax Exemption Certificate</label>
                                        <div class="col-8">
                                            <!-- <input type="file" class="form-control form-control-solid" id="exampleFormControlTextarea1"> -->
                                            <div class="custom-file-upload">
                                                <label for="file-upload" id="file-label" class="custom-file-label form-control-user">Choose File</label>
                                                <input id="file-upload" type="file" class="form-control form-control-user" onchange="updateFileName()">
                                            </div>                                    
                                        </div> 
                                    </div>
                                    
                                    <div class="form-row mb-4 ">
                                        <div class="col-8">
                                            <input type="submit" class="btn btn-primary" value="Submit">
                                        </div>
                                    </div>
                                <!-- </div>     -->
                            </form>                            
                        </div>
                    </div>
                </div>
            </div>
            
           <!---------------->             
           <div class="row">
                <div class="col-md-12">
                    <div class="card mb-2">
                        <div class="card-header">
                            Remarks
                        </div> 
                        <div class="card-body">
                            <div class="row">
                                <label for="exampleFormControlTextarea1">Previous Comments</label>   
                                <table class="table"  cellspacing="0">
                                    <tbody>     
                                        @foreach($remarks as $remark)
                                        <tr><th >{{$remark->comment}} </th><th>{{$remark->user_name}}</th><th >{{date('Y-m-d', strtotime($remark->created_at))}} </th></tr> 
                                        @endforeach                                  
                                    </tbody>
                                </table>
                            </div>

                           
                        </div>
                    </div>
                </div>
            </div> 
           <!------------------------->
           <div class="row">
                <div class="col-md-12">
                    <div class="card mb-2">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Approval</h6>
                        </div>
                        <div class="card-body ">                            
                            <form class="form-user" method="POST" action="{{route('status-vendor')}}"> 
                                @csrf
                            <div class="form-row mb-4">
                                        <label for="exampleFormControlSelect2" class="col-4 col-form-label">Select Action</label>
                                        <div class="col-8">
                                            <select class="form-control form-control-solid" id="status" name="status">
                                                <option value="Request Resubmission">Request Resubmission </option>
                                                <option value="Approve">Approve</option>
                                                <option value="Reject">Reject</option>                                            
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-row mb-4">                
                                        <label for="name" class="col-4 col-form-label">Enter Internal Notes</label>
                                        <div class="col-8">
                                        <textarea class="form-control form-control-solidform-control-user" id="exampleFormControlTextarea1" rows="2" name="internal_note"></textarea>
                                        </div> 
                                    </div>
                                    <div class="form-row mb-4">                
                                        <label for="name" class="col-4 col-form-label">Enter Remarks</label>
                                        <div class="col-8">
                                        <textarea class="form-control form-control-solid" id="exampleFormControlTextarea1" rows="2" name="internal_remark"></textarea>
                                        </div> 
                                    </div>
                  <input type="hidden"name="id" value="{{$vendor->id??null}}">
                  <input type="hidden"name="user_id" value="{{$vendor->user_id??null}}">
                                    <div class="form-row mb-4">
                                        <div class="col-8">
                                            <input type="submit" class="btn btn-primary" value="Submit">
                                        </div>
                                    </div>
                            </form>                            
                        </div>
                    </div>
                </div>
            </div>
           <!------------------------->           
            <!------------------------->
            <div class="row">
                <div class="col-md-12">
                    <div class="card mb-2">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Accounting Information</h6>
                        </div>
                        <div class="card-body ">                            
                            <form class="form-user ">
                            <div class="row">
                                <div class="col-md-6 col-sm-12">
                                <div class="form-row mb-4">
                                    <label for="name" class="col-4 col-form-label">Company Code </label>
                                    <div class="col-8">
                                        <select id="inputState" class="form-control form-control-user">
                                         
                                        @foreach ($companies as  $company)
                                            <option value="{{$company->code}}">{{$company->code}}-{{$company->name}}</option>
                                        @endforeach  
                                        
                                        </select>
                                    </div>                    
                                </div>
                                <div class="form-row mb-4">                
                                        <label for="name" class="col-4 col-form-label">Supply Plant</label>
                                        <div class="col-8">
                                            <select id="inputState" class="form-control form-control-user">
                                                @foreach ($plants as  $plant)
                                                    <option value="{{$plant->code}}">{{$plant->code}}-{{$plant->name}}</option>
                                                @endforeach                                           
                                            </select>
                                        </div> 
                                    </div>
                                    <div class="form-row mb-4">                
                                        <label for="name" class="col-4 col-form-label">Purchase Organization</label>
                                        <div class="col-8">
                                            <select id="inputState" class="form-control form-control-user">
                                                @foreach ($purcorgzations as  $value)
                                                    <option value="{{$value->code}}">{{$value->code}}-{{$value->name}}</option>
                                                @endforeach                                                  
                                            </select>
                                        </div> 
                                    </div>
                                    <div class="form-row mb-4">                
                                        <label for="name" class="col-4 col-form-label">Payment Terms</label>
                                        <div class="col-8">
                                            <select id="inputState" class="form-control form-control-user">
                                                <option value="Net30" selected>Net 30</option>
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
                                    

                                    

                                  
                                    
                                   
                                </div>
                            <div class="col-md-6 col-sm-12">
                                <div class="form-row mb-4">  
                                <label for="name" class="col-4 col-form-label">Reconciliation Account<span class="mandatory">*</span></label>
                                    <div class="col-8">
                                        <select id="inputState" class="form-control form-control-user">
                                        <!-- <option>Choose...</option> -->
                                        <option value="1628542">Sundry Creditors Dom-other inputs</option>
                                        <option value="1628550">Sundry Creditors Dom-Packing Materials</option>
                                    </select>
                                    </div>                
                                </div>
                                <div class="form-row mb-4">                
                                        <label for="name" class="col-4 col-form-label">Account Group</label>
                                        <div class="col-8">
                                            <select id="inputState" class="form-control form-control-user">
                                                <option value="YB01">Domestic Vendors</option>

                                            </select>
                                        </div> 
                                    </div>
                                    <div class="form-row mb-4">                
                                        <label for="name" class="col-4 col-form-label">Schema Group</label>
                                        <div class="col-8">
                                            <select id="schemagroup" class="form-control form-control-user">
                                                <option value="ZD">ZD-Domestic</option>
                                                <option value="ZI">ZI-Imported</option>
                                                <option value="ZW">Work Contract</option>
                                            </select>
                                        </div> 
                                    </div>
                                    <div class="form-row mb-4">
                                        <label for="exampleFormControlSelect2" class="col-4 col-form-label">Inco Terms</label>
                                        <div class="col-8">
                                            <select class="form-control form-control-user" id="status" >
                                                <option value="EXW">EXW </option>
                                           
                                            </select>
                                        </div>
                                    </div>  
                                    
                                    
                            </div>
                            </div>    
                            </form>
                            
                        </div>
                    </div>
                </div>
            </div>
           <!------------------------->
            
              
   
  <!-- Scrollable modal example-->

<!-- Modal-->
<div class="modal fade" id="exampleModalScrollable" tabindex="-1" aria-labelledby="exampleModalScrollableLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-scrollable">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalScrollableLabel">Get this party started?</h5>
                <button class="btn-close" type="button" data-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quia numquam ea consectetur nisi qui culpa earum rem porro? Nobis tempore soluta quia quis velit delectus animi veritatis molestias ab ut.</p>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam quidem dolorum doloribus possimus id quod molestias incidunt, rem voluptates sint praesentium magni debitis repellat impedit maiores blanditiis similique autem minus.</p>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Sint corporis harum ad dolor consequatur reprehenderit, aperiam, minima nostrum, laborum modi accusantium nisi ullam aliquam aut ea sit qui sequi mollitia.</p>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. At, ex quo? Eaque veritatis magni sapiente adipisci molestiae suscipit. Nam, illo voluptatum veniam similique maiores temporibus iusto quo eum minima ad.</p>
                <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Consequatur commodi ex ipsam atque, facere est unde rerum deleniti totam, voluptatum numquam aspernatur assumenda quaerat ipsa accusantium. Ipsam illum aliquid impedit!</p>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Odio quibusdam odit voluptates quam voluptatem praesentium fugit dignissimos rem porro quia distinctio, at non autem illum ipsum quod enim amet ipsam.</p>
            </div>
            <div class="modal-footer">
                <button class="btn btn-text-primary me-2" type="button" data-dismiss="modal">Close</button>
                <button class="btn btn-text-primary" type="button">Save changes</button>
            </div>
        </div>
    </div>
</div>
<!-- Content Row -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>  
<script type="text/javascript">
    $(document).ready(function() 
    {
  
  $("#panmodal").click(function () {
    $('#confirmationModal').modal('show');
  });
   $('#dynamicTable').on('click', '.addRow', function (e) {
    e.preventDefault();
         let newRow = `
             <tr>
                <td class="d-flex"><a href="#" class="btn btn-success btn-circle addRow"><i class="fas fa-plus"></i></a><a href="#" class="btn btn-warning btn-circle removeRow"><i class="fas fa-minus"></i></td>
                 <td><select id="inputState" name="taxclass[]" class="form-control form-control-user">
                         <option value="1000">4R-Section-194R TDS on Benefits</option>
                     </select></td>
                 <td><input id="agreeCheckbox" class="inline" type="checkbox" name="name" autocomplete="Phone Number"></td>
                <td><select id="inputState" class="form-control form-control-user">
                         <option value="Co">Co-Company</option>
                     </select></td>
                 <td> <input id="" class="form-control form-control-user" type="text" name="accountnumber" :value="old('phone')"  autocomplete="Phone Number" /> </td>
                 <td> <input id="" class="form-control " type="date" name="podate" /></td>
                 <td> <input id="" class="form-control " type="date" name="podate" /></td>
                 <td> <input id="" class="form-control form-control-user" type="text" name="accountnumber" :value="old('phone')"  autocomplete="Phone Number" /></td>                
                 
                
             </tr>`;
         $('#dynamicTable tbody').append(newRow);
     });

//     // Remove a row
     $('#dynamicTable').on('click', '.removeRow', function (e) {
         // Ensure at least one row remains
         e.preventDefault();
         if ($('#dynamicTable tbody tr').length > 1) {
             $(this).closest('tr').remove();
            
         } else {
             alert("At least one row must remain in the table.");
             
         }
     });
  
    });

    function updateFileName() {
        const fileInput = document.getElementById("file-upload");
        const fileLabel = document.getElementById("file-label");
        if (fileInput.files.length > 0) {
            fileLabel.textContent = fileInput.files[0].name;
        } else {
            fileLabel.textContent = "Choose File";
        }
    }
    </script>
</x-app-layout>