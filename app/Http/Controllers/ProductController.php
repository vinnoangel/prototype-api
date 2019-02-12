<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\Product;
use Illuminate\Database\QueryException;
use Exception;
use Hash;

use DB;
use \App\Helpers\AppHelper as Helper;

use App\Http\Controllers\AdministratorController;

class ProductController extends Controller
{

    /**
     * Display all products.
     *
     * @return \Illuminate\Http\Response
     */
    public function getProducts($limitPerPage = 20)
    {
        // Get products

        try 
        {
            // gets all products
            $products = DB::table('products')
                ->paginate($limitPerPage);

            $message = 'Products retrieved';

            // checks if there are products
            $checkProducts = json_decode(json_encode($products), true);
            if ($checkProducts['data'] == false) 
            {
                $message = 'No products found';
                $products['data'] = array();
            
                // format response from AppHelper
                return Helper::instance()->successResponse($message, $products);
            }
            
            // format response from AppHelper
            $response = Helper::instance()->successResponse($message, $products);

        } catch (QueryException $e) 
        {	
        	// Catch query exception
            $response = Helper::instance()->errorResponse($e);
        } catch (Exception $e) 
        {
        	// Catch throwed exception
            $response = Helper::instance()->errorResponse($e);;
        }

        // Return collection of products
        return $response;
    }

    /**
     * Display the specified product id.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function getProductById($id)
    {
        try 
        {
            // gets a product using product ID
            $product = DB::table('products')
                ->where('id', $id)->first();

            // checks if product exist
            if (!$product) 
            {
                throw new Exception("Product not found");
            }

            $message = 'Product retrieved';
            $response['data'] = $product;
            
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

        // return product
        return $response;
    }

    /**
     * Display the specified product by name.
     *
     * @param  int  $name
     * @return \Illuminate\Http\Response
     */
    public static function getProductByName($name)
    {
        // gets product by name
        $product = DB::table('products')
            ->where('name', $name)->first();

        return $product;
    }

    /**
     * Store a newly created product.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function newProduct(Request $request)
    {
        try 
        {
            // gets inputs request
            $product['name'] = $request->input('name');
            $product['price'] = $request->input('price');
            $product['description'] = $request->input('description');
            $product['discount'] = $request->input('discount');
            $product['colors'] = $request->input('colors');
            $product['sizes'] = $request->input('sizes');
            $product['gender'] = $request->input('gender') != null 
                ? $request->input('gender') : 'f-m';
            $product['created_at'] = date("Y-m-d H:i:s");
            $product['updated_at'] = date("Y-m-d H:i:s");
            $product['admin_id'] = $request->input('admin_id');

            // Validates user inputs
            $regex = "/^(?=.+)(?:[1-9]\d*|0)?(?:\.\d+)?$/";
            $validatedData = $request->validate([
                'name' => 'required|string|min:5',
                'price' => array('required','regex:'.$regex),
                'description' => 'required|string|min:5',
                'admin_id' => 'required|min:1',
            ]);

            // validate Administrator ID
            AdministratorController::validateAdministrator($product['admin_id']);

            // checks if product has been added before
            $checkName = json_decode(json_encode(
                $this->getProductByName($product['name'])
            ), true);
            if ($checkName) 
            {
                throw new Exception("Product name already exit");
            }

            // remove admin_id 
            unset($product['admin_id']);

            // insert product
            $product_id = DB::table('products')
                ->insertGetId($product);

            // checks if insertion was successful
            if (!$product_id) 
            {
                throw new Exception("Product was not added");
            }

            $message = 'Product has been added successfully';

            // gets a newly inserted product
            $getProduct = $this->getProductById($product_id);
            $getProduct['message'] = $message;
            $response = $getProduct;
            
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
            // gets inputs request for update
            $product['id'] = $request->input('id');
            $product['name'] = $request->input('name');
            $product['price'] = $request->input('price');
            $product['description'] = $request->input('description');
            $product['discount'] = $request->input('discount');
            $product['colors'] = $request->input('colors');
            $product['sizes'] = $request->input('sizes');
            $product['gender'] = $request->input('gender') != null 
                ? $request->input('gender') : 'f-m';
            $product['updated_at'] = date("Y-m-d H:i:s");
            $product['admin_id'] = $request->input('admin_id');

            // Validates user inputs
            $regex = "/^(?=.+)(?:[1-9]\d*|0)?(?:\.\d+)?$/";
            $validatedData = $request->validate([
                'id' => 'required|min:1',
                'name' => 'required|string|min:5',
                'price' => array('required','regex:'.$regex),
                'description' => 'required|string|min:5',
                'admin_id' => 'required|min:1',
            ]);

            // validate Administrator ID
            AdministratorController::validateAdministrator($product['admin_id']);

            // checks if product name exist
            $checkName = json_decode(json_encode(
                $this->getProductByName($product['name'])
            ), true);
            if ($checkName['name']) 
            {
            	// checks if it belongs to another product
                if ($checkName['id'] != $product['id']) 
            	{
            		throw new Exception("Product name already exit");
            	}
            }

            // remove admin_id 
            unset($product['admin_id']);

            // updates product
            $updateProduct = DB::table('products')
                ->where('id', $product['id'])
                ->update([
                    'name' => $product['name'],
                    'price' => $product['price'],
                    'description' => $product['description'],
                    'discount' => $product['discount'],
                    'colors' => $product['colors'],
                    'sizes' => $product['sizes'],
                    'gender' => $product['gender'],
                    'updated_at' => $product['updated_at'],
                ]);

            // checks if update was successful
            if (!$updateProduct) 
            {
                throw new Exception("Product was not updated");
            }

            $message = 'Product has been updated successfully';

            // gets a product
            $getProduct = $this->getProductById($product['id']);
            $getProduct['message'] = $message;
            $response = $getProduct;

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
    public static function delete($id, $admin_id)
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

            // deletes product from database
            $response = DB::table('products')
                ->where('id', $id)
                ->delete();

            // checks if delete was successful
            if (!$response) 
            {
                throw new Exception("Product not found");
            }

            $message = 'Product has been deleted successfully';
            
            // format response from AppHelper
            $response = Helper::instance()->successResponse($message);

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
     * validate product id.
     * @param  int  $id
     * @return boolean
     */
    public static function validateProduct($id)
    {
        // creates instance of ProductController
        $product = new ProductController();

        // gets a product
        $isProduct = $product->getProductById($id);

        // checks if product exist
        if (!$isProduct['status']) 
        {
            throw new Exception($isProduct['message']);
        }

        // return response
        return $isProduct['response']['data'];

    }
}

