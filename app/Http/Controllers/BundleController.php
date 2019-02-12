<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;

use App\Bundle;
use Illuminate\Database\QueryException;
use Exception;
use Hash;
use App\Http\Controllers\ProductController;
use DB;
use \App\Helpers\AppHelper as Helper;

class BundleController extends Controller
{
    /**
     * Display all bundles.
     *
     * @return \Illuminate\Http\Response
     */
    public function getBundles($limitPerPage = 20)
    {
        // Get bundles

        try 
        {
            // creates an empty array variable
            $all_bundles = array();

            // gets all bundle product
            $bundles = DB::table('products')
            	->select('id','description', 'name', 'price', 'discount', 'created_at')
            	->where('is_bundle', 'yes')
            	->paginate($limitPerPage);

            // checks if there are bundles
            $checkBundle = json_decode(json_encode($bundles), true);
            if ($checkBundle['data'] == false) 
            {
                $message = 'No bundle found';
                $bundles['data'] = array();

                // format response from AppHelper
                return Helper::instance()->successResponse($message, $bundles);
            }

            // loop through bundles to get their respective products
            foreach ($checkBundle['data'] as $key => $bundle) 
            {
            	// gets all products link to this bundle
                $bundleProducts = DB::table('bundles')
            	->join('products', 'bundles.product_id', '=', 'products.id')
            	->select('products.id', 'name', 'description', 'price', 'discount', 
            		'colors', 'sizes', 'gender', 'bundles.bundle_id', 
            		'bundles.created_at')
            	->where('bundles.bundle_id', $bundle['id'])
            	->get();

                // assign result to bundle product key
            	$bundle['products'] = $bundleProducts;
            	
                // push bundle
            	array_push($all_bundles, $bundle);
            }

            // Lets re-assign pagination details
            $bundles = array();
            $bundles['data'] = $all_bundles;
            $bundles['current_page'] = $checkBundle['current_page'];
            $bundles['first_page_url'] = $checkBundle['first_page_url'];
            $bundles['from'] = $checkBundle['from'];
            $bundles['last_page'] = $checkBundle['last_page'];
            $bundles['last_page_url'] = $checkBundle['last_page_url'];
            $bundles['next_page_url'] = $checkBundle['next_page_url'];
            $bundles['path'] = $checkBundle['path'];
            $bundles['per_page'] = $checkBundle['per_page'];
            $bundles['prev_page_url'] = $checkBundle['prev_page_url'];
            $bundles['to'] = $checkBundle['to'];
            $bundles['total'] = $checkBundle['total'];

            $message = 'Bundles retrieved';
            
            // format response from AppHelper
            $response = Helper::instance()->successResponse($message, $bundles);
        } catch (QueryException $e) 
        {	
        	// Catch query exception
            $response = Helper::instance()->errorResponse($e);
        } catch (Exception $e) 
        {
        	// Catch throwed exception
            $response = Helper::instance()->errorResponse($e);;
        }

       
        // Return collection of bundles
        return $response;
    }

    /**
     * Display specfic bundle.
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function getBundleById($id)
    {
        // Get bundles

        try 
        {
            // gets a bundle
            $bundle = DB::table('products')
                ->select('id','description', 'name', 'price', 'discount', 'created_at')
                ->where('is_bundle', 'yes')
                ->where('id', $id)
                ->first();

            // checks if bundle exist
            if (!$bundle) 
            {
                $message = 'No bundle found';
                $bundle['data'] = array();

                // format response from AppHelper
                return Helper::instance()->successResponse($message, $bundle);
            }

            // convert to JSON
            $bundle = json_decode(json_encode($bundle), true);

            // gets products of this bundle
            $bundleProducts = DB::table('bundles')
            ->join('products', 'bundles.product_id', '=', 'products.id')
            ->select('products.id', 'name', 'description', 'price', 'discount', 
                'colors', 'sizes', 'gender', 'bundles.bundle_id', 
                'bundles.created_at'
            )
            ->where('bundles.bundle_id', $id)
            ->get();

            $bundle['products'] = $bundleProducts;

            $message = 'Bundles retrieved';
            $response['data'] = $bundle;
            
            // format response from AppHelper
            $response = Helper::instance()->successResponse($message, $response);
        } catch (QueryException $e) 
        {   
            // Catch query exception
            $response = Helper::instance()->errorResponse($e);
        } catch (Exception $e) 
        {
            // Catch throwed exception
            $response = Helper::instance()->errorResponse($e);;
        }

        // Return collection of bundles
        return $response;
    }

    /**
     * Store a newly created bundle.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function newBundle(Request $request)
    {
        try 
        {
            // gets all inputs request
            $bundle['name'] = $request->input('name');
            $bundle['price'] = $request->input('price');
            $bundle['discount'] = $request->input('discount');
            $bundle['description'] = $request->input('description');
            $bundle['is_bundle'] = 'yes';
            $bundle['created_at'] = date("Y-m-d H:i:s");
            $bundle['updated_at'] = date("Y-m-d H:i:s");
            $bundle['admin_id'] = $request->input('admin_id');

            $product_ids = $request->input('product_ids');

            // Validates user inputs
            $regex = "/^(?=.+)(?:[1-9]\d*|0)?(?:\.\d+)?$/";
            $validatedData = $request->validate([
                'product_ids' => 'required|array|min:1',
                'name' => 'required|string|min:5',
                'price' => array('required','regex:'.$regex),
                'description' => 'required|string|min:5',
                'admin_id' => 'required|min:1',
            ]);

            // validate Administrator ID
            AdministratorController::validateAdministrator($bundle['admin_id']);

            // checks if bundle has been created before
            $checkName = json_decode(json_encode(
                ProductController::getProductByName($bundle['name'])
            ), true);
            if ($checkName) 
            {
                throw new Exception("Bundle name already exit");
            }

            // Ensure that the non of the product is a bundle
            foreach ($product_ids as $product_id) 
            {
            	// convert to JSON
                $is_bundle = json_decode(json_encode (
	                ProductController::validateProduct($product_id)
	            ), true);

                // checks if is_bundle is yes
	            if ($is_bundle['is_bundle'] == 'yes') 
	            {
	            	// throw error since selected product ID is bundle
                    $name = $is_bundle['response']['name'];
	                throw new Exception("Product with ID:$product_id ($name) is a bundle");
	            }
            }

            // remove admin_id key before proceeding to insert
            unset($bundle['admin_id']);

            // insert new bundle
            $bundle_id = DB::table('products')
                ->insertGetId($bundle);

            // checks if insertion was successful
            if (!$bundle_id) 
            {
                throw new Exception("Bundle was not added");
            }

            // insert products of newly created bundle
            foreach ($product_ids as $product_id) 
            {
            	$bundleProduct['product_id'] = $product_id;
            	$bundleProduct['bundle_id'] = $bundle_id;
	            $bundleProduct['created_at'] = date("Y-m-d H:i:s");
	            $bundleProduct['updated_at'] = date("Y-m-d H:i:s");

            	// insert product
                $this->newBundleProduct($bundleProduct);
            	
            }

            $message = 'Bundle has been added successfully';

            // get inserted bundle and her products
            $bundle = $this->getBundleById($bundle_id);
            $bundle['message'] = $message;
            
            $response = $bundle;

        } catch (QueryException $e) 
        {	
        	// Catch query exception
            $response = Helper::instance()->errorResponse($e);
        } catch (Exception $e) 
        {
        	// Catch throwed exception
            $response = Helper::instance()->errorResponse($e);;
        }

        // return response
        return $response;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request)
    {
        try 
        {
            // gets all inputs reques
            $bundle['bundle_id'] = $request->input('id');
            $bundle['name'] = $request->input('name');
            $bundle['price'] = $request->input('price');
            $bundle['discount'] = $request->input('discount');
            $bundle['description'] = $request->input('description');
            $bundle['updated_at'] = date("Y-m-d H:i:s");
            $bundle['admin_id'] = $request->input('admin_id');

            $product_ids = $request->input('product_ids');

            // Validates user inputs
            $regex = "/^(?=.+)(?:[1-9]\d*|0)?(?:\.\d+)?$/";
            $validatedData = $request->validate([
                'product_ids' => 'required|array|min:1',
                'name' => 'required|string|min:5',
                'price' => array('required','regex:'.$regex),
                'description' => 'required|string|min:5',
                'admin_id' => 'required|min:1',
                'id' => 'required|min:1',
            ]);
            
            // validate Administrator ID
            AdministratorController::validateAdministrator($bundle['admin_id']);

            // checks if name exist
            $checkName = json_decode(json_encode(
                ProductController::getProductByName($bundle['name'])
            ), true);
            if ($checkName['name']) 
            {
            	// checks if name belongs to another bundle
                if ($checkName['id'] != $bundle['bundle_id']) 
            	{
            		throw new Exception("Bundle name already exit");
            	}
            }

            // Ensure that the non of the product is a bundle
            foreach ($product_ids as $product_id) 
            {
            	// convert to JSON
                $is_bundle = json_decode(json_encode (
	                ProductController::validateProduct($product_id)
	            ), true);

                // checks if product is a bundle
	            if ($is_bundle['is_bundle'] == 'yes') 
	            {
	            	// throw error since product is a bundle
                    $name = $is_bundle['name'];
	                throw new Exception("Product with ID:$product_id ($name) is a bundle");
	            }
            }

            //  remove admin_id key
            unset($bundle['admin_id']);

            // update bundle
            $response = DB::table('products')
                ->where('id', $bundle['bundle_id'])
                ->update([
                    'name' => $bundle['name'],
                    'price' => $bundle['price'],
                    'description' => $bundle['description'],
                    'discount' => $bundle['discount'],
                    'updated_at' => $bundle['updated_at'],
                ]);

            // checks if update was successful
            if (!$response) 
            {
                throw new Exception("Bundle was not updated");
            }

            // Get all products link to the bundle
            $getBundleProducts = DB::table('bundles')
                ->where('bundle_id', $bundle['bundle_id'])
                ->select('bundles.product_id')
                ->get();
            
            // convert to JSON
            $bundleProduct_ids_to_be_deleted = array_column(
            	json_decode(
            		json_encode($getBundleProducts), true
            	), 'product_id'
            );

            // Add new bundle product and get the ones that will be deleted
            foreach ($product_ids as $product_id) 
            {
            	$bundleProduct['product_id'] = $product_id;
            	$bundleProduct['bundle_id'] = $bundle['bundle_id'];
	            $bundleProduct['created_at'] = date("Y-m-d H:i:s");
	            $bundleProduct['updated_at'] = date("Y-m-d H:i:s");

	            if (in_array($product_id, $bundleProduct_ids_to_be_deleted)) 
	            {
	            	// get product to be deleted
                    $bundleProduct_ids_to_be_deleted = array_diff(
	            		$bundleProduct_ids_to_be_deleted, array($product_id)
	            	);

	            } else {
	            	// add new bundle product
	            	$this->newBundleProduct($bundleProduct);
	            }
            }

            // Delete bundle product(s)
            foreach ($bundleProduct_ids_to_be_deleted as $product_id) 
            {
            	$bundleProduct['product_id'] = $product_id;
            	$bundleProduct['bundle_id'] = $bundle['bundle_id'];

                // delete product from this bundle
	            $this->deleteBundleProduct($bundleProduct);
            }

            $message = 'Bundle has been updated successfully';
            $bundle = $this->getBundleById($bundle['bundle_id']);
            $bundle['message'] = $message;
            
            $response = $bundle;

        } catch (QueryException $e) 
        {	
        	// Catch query exception
            $response = Helper::instance()->errorResponse($e);
        } catch (Exception $e) 
        {
        	// Catch throwed exception
            $response = Helper::instance()->errorResponse($e);;
        }

        // return response
        return $response;
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function delete($id, $admin_id)
    {

        try 
        {
            // validate variable
            if (empty($admin_id)) 
            {
                throw new Exception("Administrator ID is empty");
            }

            // validate Administrator ID
            AdministratorController::validateAdministrator($admin_id);

            // deletes all products associated with this bundle from database
            $response = DB::table('bundles')
                ->where('bundle_id', $id)
                ->delete();

            // checks if delete was successful
            if (!$response) 
            {
                throw new Exception("Bundle product not found");
            }

            $message = 'Bundle has been deleted successfully';

            // delete bundle
            $response = ProductController::delete($id, $admin_id);

            $response['message'] = $message;

        } catch (QueryException $e) 
        {   
            // Catch query exception
            $response = Helper::instance()->errorResponse($e);
        } catch (Exception $e) 
        {
            // Catch throwed exception
            $response = Helper::instance()->errorResponse($e);;
        }

        // return response
        return $response;
    }

    /**
     * Display a specific bundle products.
     *
     * @param  int $bundle_id
     * @return array
     */
    public static function getBundleProduct($bundle_id)
    {

        try { 
            
            // gets products by bundle_id in bundles table
            $products = DB::table('bundles')
                ->join('products', 'product_id', '=', 'products.id')
                ->where('bundle_id', $bundle_id)
                ->select('products.*')
                ->get();

            $message = "Bundle products retrieved";
            $response['data'] = $products;

            // format response from AppHelper
            $response = Helper::instance()->successResponse($message, $response);

        } catch (QueryException $e) 
        {   
            // Catch query exception
            $response = Helper::instance()->errorResponse($e);
        } catch (Exception $e) 
        {
            // Catch throwed exception
            $response = Helper::instance()->errorResponse($e);;
        }

        // return response
        return $response;
    }

    /**
     * Store a newly created bundle product.
     *
     * @param  array $bundleProduct
     * @return boolean
     */
    public function newBundleProduct($bundleProduct)
    {

    	try { 
            // insert product bundle
    		DB::table('bundles')->insert($bundleProduct);

    		$response = true;

    	} catch (QueryException $e) 
        {	
        	// Catch query exception
            $response = Helper::instance()->errorResponse($e);
        } catch (Exception $e) 
        {
        	// Catch throwed exception
            $response = Helper::instance()->errorResponse($e);;
        }

        // return response
        return $response;
    }

    /**
     * Update existing bundle product.
     *
     * @param  array $bundleProduct
     * @return boolean
     */
    public function deleteBundleProduct($bundleProduct)
    {
    	try {
    		// deletes bundle product
            $response = DB::table('bundles')
	            ->where('product_id', $bundleProduct['product_id'])
	            ->where('bundle_id', $bundleProduct['bundle_id'])
	            ->delete();

	    	$response = true;

    	} catch (QueryException $e) 
        {	
        	// Catch query exception
            $response = Helper::instance()->errorResponse($e);
        } catch (Exception $e) 
        {
        	// Catch throwed exception
            $response = Helper::instance()->errorResponse($e);;
        }

        // return response
        return $response;
    }
}

