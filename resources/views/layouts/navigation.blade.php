 <!-- Sidebar -->
 <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

<!-- Sidebar - Brand -->
<a class="sidebar-brand d-flex align-items-center justify-content-center" href="{{ route('dashboard') }}">
    <div class="sidebar-brand-icon ">
    <img src="{{ asset('assets/img/logo.png')}}" height="80">
    </div>
   
</a>

<hr class="sidebar-divider my-0">

<!-- Nav Item - Dashboard -->
<li class="nav-item active">
    <a class="nav-link" href="{{ route('dashboard') }}">
        <i class="fas fa-fw fa-tachometer-alt"></i>
       <!--  <i class="fas fa-fw fa-analytics"></i> -->
        <span>Dashboard</span></a>
</li>

<!-- Divider -->
<hr class="sidebar-divider">

<!-- Heading -->





@php
$statusData = DB::table('vendor_details')->where('user_id',Auth::user()->id)->first();
@endphp
@if(Auth::user()->role_id==5 && !empty($statusData->status) && $statusData->status=='Approve')
<li class="nav-item">
    <a class="nav-link" href="{{ route('vendor.profile') }}">
    <i class="fas fa-fw fa-user"></i>
        <span>Profile</span></a>
</li>
@endif
@can(['vendor-list', 'vendor-approve'])

<li class="nav-item dropdoWn">
    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseVendors"
        aria-expanded="true" aria-controls="collapseVendors">
        <i class="fas fa-fw fa-wrench"></i>
        <span>Vendors</span>
    </a>
    <div id="collapseVendors" class="collapse" aria-labelledby="headingUtilities"
        data-parent="#accordionSidebar">
        <div class="bg-white py-2 collapse-inner rounded">            
            <a class="collapse-item" href="{{ route('vendor.approve') }}">Vendor Approvals</a>
            <a class="collapse-item" href="{{ route('vendor.active') }}">Active Vendors</a>
            <a class="collapse-item" href="{{ route('vendor.blocked') }}">Blocked Vendors</a>
            <a class="collapse-item" href="{{ route('vendor.blacklisted') }}">Blacklisted Vendors</a>
        </div>
    </div>
</li>
@endcan

<!-- Nav Item - Pages Collapse Menu -->
@can(['role-create', 'role-edit', 'role-delete'])
        <li class="nav-item">
            <a class="nav-link" href="{{ route('roles.index') }}">
        <i class="fas fa-fw fa-wrench"></i>
        <span>Manage Roles</span> </a>
    </li>
@endcan 


<!-- Divider -->
<hr class="sidebar-divider d-none d-md-block">

<!-- Sidebar Toggler (Sidebar) -->
<div class="text-center d-none d-md-inline">
    <button class="rounded-circle border-0" id="sidebarToggle"></button>
</div>


</ul>
<!-- End of Sidebar -->