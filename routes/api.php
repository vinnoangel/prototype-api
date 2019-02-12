<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::fallback(function(){
    return response()->json(['message' => 'Page Not Found.', 'status' => false], 404);
})->name('api.fallback.404');


/////////////////////////	Administrator Route Start	////////////////////////////
//List all administrators
Route::get('administrators/{limitPerPage?}', 'AdministratorController@getAdministrators');

// List single administrator
Route::get('administrator/{id}', 'AdministratorController@getAdministratorById');

// create administrator
Route::post('administrator', 'AdministratorController@newAdministrator');

// update administrator
Route::put('administrator', 'AdministratorController@update');

// delete administrator
Route::delete('administrator/{id}', 'AdministratorController@delete');
/////////////////////////	Administrator Route End	////////////////////////////


/////////////////////////	Customer Route Start	////////////////////////////
//List all customers
Route::get('customers/{limitPerPage?}', 'CustomerController@getCustomers');

// List single customer
Route::get('customer/{id}', 'CustomerController@getCustomerById');

// create customer
Route::post('customer', 'CustomerController@newCustomer');

// update customer
Route::put('customer', 'CustomerController@update');

// delete customer
Route::delete('customer/{id}', 'CustomerController@delete');
/////////////////////////	Customer Route End	//////////////////////////////////


/////////////////////////	Product Route Start	//////////////////////////////////
//List all products
Route::get('products/{limitPerPage?}', 'ProductController@getProducts');

// List single product
Route::get('product/{id}', 'ProductController@getProductById');

// create product
Route::post('product', 'ProductController@newProduct');

// update product
Route::put('product', 'ProductController@update');

// delete product
Route::delete('product/{id}/{admin_id}', 'ProductController@delete');
/////////////////////////	Product Route End	/////////////////////////////////


/////////////////////////	Bundle Route Start	/////////////////////////////////
//List all bundles
Route::get('bundles/{limitPerPage?}', 'BundleController@getBundles');

// List single bundle
Route::get('bundle/{id}', 'BundleController@getBundleById');

// create bundle
Route::post('bundle', 'BundleController@newBundle');

// update bundle
Route::put('bundle', 'BundleController@update');

// delete bundle
Route::delete('bundle/{id}/{admin_id}', 'BundleController@delete');
/////////////////////////	Bundle Route End	/////////////////////////////////


/////////////////////////	Cart Route Start	/////////////////////////////////
//List all carts
Route::get('carts/{customer_id}', 'CartController@getProductsFromCart');

// create cart
Route::post('cart', 'CartController@addProductToCart');

// update cart
Route::put('cart', 'CartController@editCart');

// delete cart
Route::delete('cart/{customer_id}/{product_id}', 'CartController@removeProductFromCart');
/////////////////////////	Cart Route End	//////////////////////////////////


/////////////////////////	Order Route Start	///////////////////////////////
//List all orders
Route::get('orders/{admin_id}/{limitPerPage?}', 'OrderController@getOrders');

// get order
Route::get('order/{order_id}', 'OrderController@getOrder');

//create customer order
Route::post('order', 'OrderController@create');

/////////////////////////	Order Route End	//////////////////////////////////
