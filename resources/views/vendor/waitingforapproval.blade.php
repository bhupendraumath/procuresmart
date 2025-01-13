<x-app-layout>
<!-- Content Row --> 
 <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-header py-4">
            <h3 class="m-0 font-weight-bold text-primary">Vendors Awaiting Approval</h3>
        </div>
        <div class="card-body">
            <div class="card-filter py-3">
                <div class="row">
                    <div class="col-md-3">
                        <label for="name" class=" col-form-label inline">Supply Plant</label>    
                        <select class="form-control" id="exampleFormControlSelect1">
                            @foreach ($plants as  $plant)
                                <option value="{{$plant->code}}">{{$plant->code}}-{{$plant->name}}</option>
                            @endforeach  
                              
                        </select>
                    </div>
                </div>
            </div>
           
            <div class="table-responsive">
                            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                <thead>
                                    <tr>                                                                                
                                        <th>Name</th>
                                        <th>GSTIN</th>
                                        <th>Email</th>
                                        <th>Phone</th>
                                        <th >Status</th>
                                        <th >Actions</th>
                                    </tr>
                                </thead>
                                <tfoot>
                                <tr>                                                                                
                                        <th> Name</th>
                                        <th>GSTIN</th>
                                        <th>Email</th>
                                        <th>Phone</th>
                                        <th >Status</th>
                                        <th >Actions</th>
                                    </tr>
                                </tfoot>
                                <tbody>
                                    @foreach($vendors as $vendor)
                                    @php
    $statusData = DB::table('vendor_details')->where('user_id',$vendor->id)->first();
@endphp
                                    <tr> 
                                        <td>{{$vendor->name ?? '-'}}</td>
                                        <td>{{$vendor->gstin ?? '-'}}</td>
                                        <td>{{$vendor->email ?? '-'}}</td> 
                                        <td>{{$vendor->mobile_number ?? '-'}}</td>
                                        <td>{{$statusData->status??'-'}}</td>
                                        <td><a href="{{ route('vendor.approvenow', ['id' => $vendor->id]) }}" class="btn btn-primary">View</a></td>                                                        
                                    </tr>
                                @endforeach
                                
                                </tbody>
                            </table>
                        </div>
                        </br>
        </div>
    </div>
  
<!-- Content Row -->
</x-app-layout>

