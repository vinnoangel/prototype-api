<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\Cart;
use Illuminate\Database\QueryException;
use Exception;
use Hash;

use DB;
use \App\Helpers\AppHelper as Helper;

use App\Http\Controllers\CustomerController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\BundleController;

class CartController extends Controller
{

    /**
     * Display all carts.
     * @param  int  $customer_id
     * @return \Illuminate\Http\Response
     */
    public static function getCartByOrderId($order_id)
    {
        // Get carts

        try 
        {
            // gets all carts using order ID
            $carts = DB::table('carts')
            	->where('order_id', $order_id)
            	->join('products', 'product_id', '=', 'products.id')
            	->select('carts.*', 'products.name', 'products.description', 'products.is_bundle')
            	->get();

            // checks if there are carts with such order ID
            $checkCart = json_decode(json_encode($carts), true);
            if (!$checkCart) 
            {
                $message = 'No carts found';
            
            	// format response from AppHelper
                $response = Helper::instance()->successResponse($message, $carts);
            }

            $message = 'Carts retrieved';
            
            // creates instance of CartController
            $cart = new CartController();

            // gets bunlde details if any
            $response = $cart->getBundleProduct($checkCart);

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

        // Return collection of carts
        return $response;
    }

    /**
     * Display all carts.
     * @param  int  $customer_id
     * @return \Illuminate\Http\Response
     */
    public static function getProductsFromCart($customer_id)
    {
        // Get carts

        try 
        {
            // gets all carts using customer ID and Order ID (order id == 0)
            $carts = DB::table('carts')
            	->where('customer_id', $customer_id)
            	->where('order_id', 0)
            	->join('products', 'product_id', '=', 'products.id')
            	->select('carts.*', 'products.name', 'products.description', 'products.is_bundle')
            	->get();

            // checks if there are carts for this customer
            $checkCart = json_decode(json_encode($carts), true);
            if (!$checkCart) 
            {
                $message = 'No carts found';
                $carts['data'] = array();

                // format response from AppHelper
                $response = Helper::instance()->successResponse($message, $carts);
            }

            $message = 'Carts retrieved';

            // creates instance of CartController
            $cart = new CartController();

            // Gets bunlde details if any
            $response['data'] = $cart->getBundleProduct($checkCart);
            
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

        // Return collection of carts
        return $response;
    }

    /**
     * Display the specified cart id.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function getCartById($id)
    {
        try 
        {

            // gets cart using cart ID
            $cart = DB::table('carts')->where('id', $id)->first();

            // checks if ID exist 
            if (!$cart) 
            {
                throw new Exception("Cart not found");
            }

            $message = 'Cart retrieved';
            
            // format response from AppHelper
            $response = Helper::instance()->successResponse($message, $cart);

        } catch (QueryException $e) 
        {	
        	// Catch query exception
            $response = Helper::instance()->errorResponse($e);
        } catch (Exception $e) 
        {
        	// Catch throwed exception
            $response = Helper::instance()->errorResponse($e);;
        }

        // Return response
        return $response;
    }

    /**
     * Display the specified bundle products.
     *
     * @param  array $carts
     * @return \Illuminate\Http\Response
     */
    public function getBundleProduct($carts)
    {
        try 
        {
            // checks if carts if empty
            if (!$carts) 
            {
                throw new Exception("Cart not found");
            }

            // creates an empty array
            $response = array();

            // loop through carts
            foreach ($carts as $cart) 
            {
                // checks if cart product is a bundle
                if ($cart['is_bundle'] == 'yes') 
                {
                    // gets products of this bundle
                    $getBundleProduct = 
                        BundleController::getBundleProduct($cart['product_id']);

                    // assign products to bundle details
                    $cart['bundle_details'] = $getBundleProduct['response']['data'];

                } else 
                {
                    // cart product is not a bundle
                    $cart['bundle_details'] = array();
                }

                array_push($response, $cart);
            }

            // return response
            return $response;

        } catch (QueryException $e) 
        {   
            // Catch query exception
            $response = Helper::instance()->errorResponse($e);
        } catch (Exception $e) 
        {
            // Catch throwed exception
            $response = Helper::instance()->errorResponse($e);;
        }

        // Return response
        return $response;
    }

    /**
     * Get specific product cart by customer ID and product ID.
     *
     * @param  int  $customer_id
     * @param  int  $product_id
     * @return array
     */
    public function getCartByCustomerIdAndProductId($customer_id, $product_id)
    {
        try 
        {

            // gets customer cart product
            $cart = DB::table('carts')
            	->where('customer_id', $customer_id)
            	->where('product_id', $product_id)
            	->first();

            // checks if product exist in cart
            if (!$cart) 
            {
                return false;
            }
            
            return $cart;

        } catch (QueryException $e) 
        {	
        	// Catch query exception
            $response = Helper::instance()->errorResponse($e);
        } catch (Exception $e) 
        {
        	// Catch throwed exception
            $response = Helper::instance()->errorResponse($e);;
        }

        // Return response
        return $response;
    }

    /**
     * Store a newly created cart.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function addProductToCart(Request $request)
    {
        try 
        {
        	// Get user inputs
        	$cart['customer_id'] = $request->input('customer_id');
            $cart['product_id'] = $request->input('product_id');
            $cart['quantity'] = $request->input('quantity') != null 
            	? $request->input('quantity') : 1;
            $cart['created_at'] = date("Y-m-d H:i:s");
            $cart['updated_at'] = date("Y-m-d H:i:s");

            // Validates user inputs
            $validatedData = $request->validate([
                'customer_id' => 'required|numeric|min:1',
                'product_id' => 'required|numeric|min:1',
            ]);

            // Validates quantity to ensure its a number
            if (!is_numeric($cart['quantity'])) 
            {
                throw new Exception("Quantity must be a number");
            }

            // validate customer ID
            CustomerController::validateCustomer($cart['customer_id']);

            // validate product ID
            $product = json_decode(json_encode(
                ProductController::validateProduct($cart['product_id'])
            ), true);

            // checks if this product has been added before 
            $isCart = $this->
            	getCartByCustomerIdAndProductId($cart['customer_id'], $cart['product_id']);

            // checks if it has been added
            if ($isCart) {
                // convert to JSON
            	$isCart = json_decode(json_encode($isCart), true);

                // increase quantity with the new quantity
            	$updateCart['quantity'] = $cart['quantity'] + $isCart['quantity'];

                // assign product ID and customer ID
            	$updateCart['product_id'] = $cart['product_id'];
            	$updateCart['customer_id'] = $cart['customer_id'];

            	// update cart since it exist
                $this->update($updateCart);

            	$message = 'Product has been added to cart';

                // gets carts products
                $getCart = CartController::getProductsFromCart($cart['customer_id']);

                $getCart['message'] = $message;
                $response = $getCart;

	            // return response 
	            return $response;
            }

            // product has not been added before


            // Assign other variables
            $cart['amount'] = $product['price'];
            $cart['discount_amount'] = $product['discount'];
            $cart['total_amount'] = ($cart['quantity'] * $cart['amount']) - $cart['discount_amount'];

            // create new cart product
            $cart_id = DB::table('carts')
                ->insertGetId($cart);

            // Check if insertion was successful
            if (!$cart_id) 
            {
                throw new Exception("Product was not added to cart");
            }
 
            $message = 'Product has been added to cart';

            // gets carts products
            $getCart = CartController::getProductsFromCart($cart['customer_id']);

            $getCart['message'] = $message;
            $response = $getCart;

        } catch (QueryException $e) 
        {	
        	// Catch query exception
            $response = Helper::instance()->errorResponse($e);
        } catch (Exception $e) 
        {
        	// Catch throwed exception
            $response = Helper::instance()->errorResponse($e);;
        }

        // Return response
        return $response; 
    }

    /**
     * Update cart.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function editCart(Request $request)
    {
        try 
        {
        	// Get user inputs for update
        	$cart['customer_id'] = $request->input('customer_id');
            $product_ids = $request->input('product_ids');
            $quantities = $request->input('quantities');
            $cart['updated_at'] = date("Y-m-d H:i:s");

            // Validates user inputs
            $validatedData = $request->validate([
                'customer_id' => 'required|numeric|min:1',
                'product_ids' => 'required|array|min:1',
                'quantities' => 'required|array|min:1',
            ]);

            // validate customer ID
            CustomerController::validateCustomer($cart['customer_id']);

            // checks if its multiple update

        	// create index
            $index = 0;

            // loop through thr products
        	foreach ($product_ids as $id) 
        	{
        		$cart['product_id'] = $id;
        		$cart['quantity'] = $quantities[$index];

        		// update cart product
            	$cart_id = $this->update($cart);

            	// increase index by 1
                $index++;
        	}

            // Check if insertion was successful
            if (!$cart_id) 
            {
                throw new Exception("Carts was not updated");
            }

            $message = 'Cart has been updated';

            // gets carts product
            $getCart = CartController::getProductsFromCart($cart['customer_id']);
            $getCart['message'] = $message;
            $response = $getCart;

        } catch (QueryException $e) 
        {	
        	// Catch query exception
            $response = Helper::instance()->errorResponse($e);
        } catch (Exception $e) 
        {
        	// Catch throwed exception
            $response = Helper::instance()->errorResponse($e);;
        }

        // Return response
        return $response;
    }

    /**
     * Update cart.
     *
     * @param  array  $cart
     * @return boolean
     */
    public function update($cart)
    {
        try 
        {
        	// validate product ID
            $product = json_decode(json_encode(
                ProductController::validateProduct($cart['product_id'])
            ), true);
 
            // Assign other variables
            $cart['amount'] = $product['price'];
            $cart['discount_amount'] = $product['discount'];
            $cart['total_amount'] = ($cart['quantity'] * $cart['amount']) - $cart['discount_amount'];

            // create update cart product
            $cart_id = DB::table('carts')
                ->where('customer_id', $cart['customer_id'])
                ->where('product_id', $cart['product_id'])
                ->where('order_id', 0)
                ->update([
                'amount' => $cart['amount'],
                'quantity' => $cart['quantity'],
                'discount_amount' => $cart['discount_amount'],
                'total_amount' => $cart['total_amount'],
                'updated_at' => date("Y-m-d H:i:s"),
                ]);

            // Check if insertion was successful
            if (!$cart_id) 
            {
                throw new Exception("Carts was not updated");
            }

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

        // Return response
        return $response;
    }

    /**
     * Update cart order_id.
     *
     * @param  array  $order
     * @return boolean
     */
    public static function updateCartOrderId($order)
    {
        try 
        {
        	// checks if order is empty
            if (empty($order)) 
        	{
        		throw new Exception("Empty parameter");
        	}
        	// validate customer ID
            CustomerController::validateCustomer($order['customer_id']);

            // update carts order ID with the newly created order id
            $carts = DB::table('carts')
                ->where('customer_id', $order['customer_id'])
                ->where('order_id', 0)
                ->update([
                'order_id' => $order['order_id'],
                'updated_at' => $order['updated_at'],
                ]);

            // Check if insertion was successful
            if (!$carts) 
            {
                throw new Exception("Carts was not updated");
            }

            $message = "Cart updated";

            // format response from AppHelper
            return Helper::instance()->successResponse($message);

        } catch (QueryException $e) 
        {	
        	// Catch query exception
            $response = Helper::instance()->errorResponse($e);
        } catch (Exception $e) 
        {
        	// Catch throwed exception
            $response = Helper::instance()->errorResponse($e);;
        }

        // Return response
        return $response;
    }

    /**
     * Remove the specified product from cart.
     *
     * @param  int  $customer_id
     * @param  int  $product_id
     * @return \Illuminate\Http\Response
     */
    public function removeProductFromCart($customer_id, $product_id)
    {
        try 
        {
        	// check if customer id is empty
        	if (empty($customer_id)) 
            {
                throw new Exception("No Customer ID found");
            }

        	// check if product id is empty
        	if (empty($product_id)) 
            {
                throw new Exception("No Product ID found");
            }

            // validate customer ID
            CustomerController::validateCustomer($customer_id);

            // validate product ID
            $product = json_decode(json_encode(
                ProductController::validateProduct($product_id)
            ), true);

            // Delete product from cart
            $response = DB::table('carts')
                ->where('customer_id', $customer_id)
                ->where('product_id', $product_id)
                ->delete();

            // check if product was removed
            if (!$response) 
            {
                throw new Exception("Product not found");
            }

            $message = 'Product has been removed successfully';

            // gets remaining cart products
            $getCart = CartController::getProductsFromCart($customer_id);

            $getCart['message'] = $message;
            $response = $getCart;

        } catch (QueryException $e) 
        {	
        	// Catch query exception
            $response = Helper::instance()->errorResponse($e);
        } catch (Exception $e) 
        {
        	// Catch throwed exception
            $response = Helper::instance()->errorResponse($e);;
        }

        // Return response
        return $response;
    }
}
