<?php
use App\Http\Controllers\AdminController;
use App\Http\Controllers\AdminVendorController;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\RoleController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\VendorController;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
  // return view('welcome');
  $user = Auth::user();
  if (!Auth::check()) {
    return redirect()->route('login');
  } else {
    return redirect()->route('dashboard');
  }
});

Route::get('/dashboard', [HomeController::class, 'index'])->middleware(['auth', 'verified'])->name('dashboard');
Route::get('/vendoronboarding', [VendorController::class, 'update'])->name('vendor.update');
Route::post('/save-vendor', [VendorController::class, 'save_vendor'])->name('vendor.save');
Route::post('/status-vendor', [VendorController::class, 'status_vendor'])->name('status-vendor');
Route::get('/vendorregistration', [VendorController::class, 'register'])->name('vendor.creation');
Route::post('/vendor-success', [VendorController::class, 'saveasdraft'])->name('vendor.success');
Route::middleware(['auth'])->group(function () {

  Route::get('/vendorprofile', [VendorController::class, 'vendor_profile'])->name('vendor.profile');
  Route::get('/security', [VendorController::class, 'vendor_changepassword'])->name('vendor.security');
  Route::post('/actionChangePassword', [VendorController::class, 'actionChangePassword'])->name('vendor.change.password');
  
});

Route::middleware(['auth', 'role:Purchase Admin|Function Head|CFO'])->group(function () {

  Route::get('/activevendor', [AdminVendorController::class, 'activevendor'])->name('vendor.active');
  Route::get('/blockedvendor', [AdminVendorController::class, 'blockedvendor'])->name('vendor.blocked');
  Route::get('/blacklistedvendor', [AdminVendorController::class, 'blacklistedvendor'])->name('vendor.blacklisted');
  Route::get('/approvevendor', [AdminVendorController::class, 'vendorwaitingapproval'])->name('vendor.approve');
  Route::get('/approvenow', [AdminVendorController::class, 'approvevendor'])->name('vendor.approvenow');
  Route::get('/vendor-details', [AdminVendorController::class, 'vendordetails'])->name('vendor.details');
  Route::get('/vendor-documents', [AdminVendorController::class, 'vendordocument'])->name('vendor.docs');

});

Route::middleware('auth')->group(function () {
  //Role management
  Route::resource('roles', RoleController::class);
  Route::get('users', [UserController::class, 'index'])->name('users.index');
  Route::get('create', [UserController::class, 'create'])->name('users.create');
  Route::get('show/{id}', [UserController::class, 'show'])->name('users.show');
  Route::post('store', [UserController::class, 'store'])->name('users.store');
  Route::get('edit/{id}', [UserController::class, 'edit'])->name('users.edit');
  Route::post('update', [UserController::class, 'update'])->name('users.update');
  Route::get('destroy', [UserController::class, 'destroy'])->name('users.destroy');
  Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
  Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
  Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');

});
//-------------------------------------------

require __DIR__ . '/auth.php';
