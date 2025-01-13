<x-app-layout>
<!-- Content Row --> 
 <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-header py-4">
            <h3 class="m-0 font-weight-bold text-primary">Blacklisted Vendors</h3>
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
                                    <tr > 
                                        <td>Ganapathy Engineering</td>
                                        <td>HD2432lkjjjjjjk</td>
                                        <td>ganapathy12vfr@gmail.com</td> 
                                        <td>9947231211</td>
                                        <td>Blacklisted</td>
                                        <td><a href="{{route('vendor.details')}}" class="btn btn-primary">View More</a></td>                                                        
                                    </tr>
                                    <tr > 
                                        <td>NO 1 FENCE</td>
                                        <td>HD2432lkjjjjjjk</td>
                                        <td>fencing@gmail.com</td> 
                                        <td>9947231211</td>
                                        <td>Blacklisted</td>
                                        <td><a href="{{route('vendor.details')}}" class="btn btn-primary">View More</a></td>                                                        
                                    </tr>
                                    <tr > 
                                        <td>Kidar Trading</td>
                                        <td>HD2432lkjjjjjjk</td>
                                        <td>kidartrading@gmail.com</td> 
                                        <td>9947231211</td>
                                        <td>Blacklisted</td>
                                        <td><a href="{{route('vendor.details')}}" class="btn btn-primary">View More</a></td>                                                        
                                    </tr>
                                    <tr > 
                                        <td>Hykon</td>
                                        <td>HD2432lkjjjjjjk</td>
                                        <td>anil@gmail.com</td> 
                                        <td>9947231211</td>
                                        <td>Blacklisted</td>
                                        <td><a href="{{route('vendor.details')}}" class="btn btn-primary">View More</a></td>                                                        
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        </br>
        </div>
    </div>
  
<!-- Content Row -->
</x-app-layout>

