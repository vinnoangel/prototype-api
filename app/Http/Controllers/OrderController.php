<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\Order;
use Illuminate\Database\QueryException;
use Exception;
use Hash;

use DB;
use \App\Helpers\AppHelper as Helper;

use App\Http\Controllers\CustomerController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\CartController;

class OrderController extends Controller
{
    /**
     * Display all orders.
     * @param  int  $limitPerPage
     * @return \Illuminate\Http\Response
     */
    public function getOrders($admin_id, $limitPerPage = 20)
    {
        // Get orders

        try 
        {
        	// checks if admin ID is empty
            if (empty($admin_id)) 
            {
                throw new Exception("Administrator ID is empty");
            }

            // validate Administrator ID
            AdministratorController::validateAdministrator($admin_id);

            // creates an empty array
            $all_orders = array();

            // gets all orders
            $orders = DB::table('orders')
            	->join('customers', 'customer_id', '=', 'customers.id')
            	->join('orderstates', 'orders.status', '=', 'orderstates.id')
            	->select('orders.*', 'customers.fullname', 'customers.email', 'customers.phone', 'customers.gender', 'customers.address', 'orderstates.name as order_status')
            	->paginate($limitPerPage);

            // checks if there are orders
            $checkOrder = json_decode(json_encode($orders), true);
            if ($checkOrder['data'] == false) 
            {
                $message = 'No order found';
                $orders['data'] = array();

                // format response from AppHelper
                return Helper::instance()->successResponse($message, $orders);
            }

            // loop through the orders to get their respective carts
            foreach ($checkOrder['data'] as $key => $order) {
                // get carts of this order
            	$orderProducts = CartController::getCartByOrderId($order['id']);
            	
            	$order['carts'] = $orderProducts['response'];

                // push to all_orders
            	array_push($all_orders, $order);
            }

            // creates an empty array
            $orders = array();

            // gets pagination details
            $orders['data'] = $all_orders;
            $orders['current_page'] = $checkOrder['current_page'];
            $orders['first_page_url'] = $checkOrder['first_page_url'];
            $orders['from'] = $checkOrder['from'];
            $orders['last_page'] = $checkOrder['last_page'];
            $orders['last_page_url'] = $checkOrder['last_page_url'];
            $orders['next_page_url'] = $checkOrder['next_page_url'];
            $orders['path'] = $checkOrder['path'];
            $orders['per_page'] = $checkOrder['per_page'];
            $orders['prev_page_url'] = $checkOrder['prev_page_url'];
            $orders['to'] = $checkOrder['to'];
            $orders['total'] = $checkOrder['total'];

            $message = 'Orders retrieved';

            // format response from AppHelper
            $response = Helper::instance()->successResponse($message, $orders);

        } catch (QueryException $e) 
        {	
        	// Catch query exception
            $response = Helper::instance()->errorResponse($e);
        } catch (Exception $e) 
        {
        	// Catch throwed exception
            $response = Helper::instance()->errorResponse($e);;
        }

        // Return collection of orders
        return $response;
    }

    /**
     * Display the specified order id.
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function getOrder($id)
    {
        // Get orders

        try 
        {
            // creates an empty array
            $all_orders = array();

            // gets order using order ID
            $order = DB::table('orders')
            	->join('customers', 'customer_id', '=', 'customers.id')
            	->join('orderstates', 'orders.status', '=', 'orderstates.id')
            	->select('orders.*', 'customers.fullname', 'customers.email', 'customers.phone', 'customers.gender', 'customers.address', 'orderstates.name as order_status')
            	->where('orders.id', $id)
            	->first();

            // checks if order exist
            if (!$order) 
            {
                throw new Exception("Order not found");
            }

            // convert to JSON
            $order = json_decode(json_encode($order), true);

        	// gets cart product
            $orderProducts = CartController::getCartByOrderId($id);

        	$orderProducts = json_decode(json_encode($orderProducts), true);
        	$order['carts'] = $orderProducts['response'];

            $message = 'Orders retrieved';
            $response['data'] = $order;

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

        // Return collection of orders
        return $response;
    }


    /**
     * Store a newly created order.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        try 
        {
        	// Get user inputs
        	$order['customer_id'] = $request->input('customer_id');
            $order['created_at'] = date("Y-m-d H:i:s");
            $order['updated_at'] = date("Y-m-d H:i:s");

            // Validates user inputs
            $validatedData = $request->validate([
                'customer_id' => 'required|numeric|min:1',
            ]);

            // validate customer ID
            CustomerController::validateCustomer($order['customer_id']);

            $isCart = CartController::
            	getProductsFromCart($order['customer_id']);
            $isCart = json_decode(json_encode($isCart), true);

            $sub_total = 0;
            $discount_amount = 0;

            // checks if carts exist
            if (!$isCart['response']['data']) 
            {
                $message = 'Cart is empty';

                // format response from AppHelper
                $response = Helper::instance()->successResponse($message);
            }

        	// loop through carts to calcuclate subtotal and discount amount
            foreach ($isCart['response']['data'] as $value) 
        	{
        		$sub_total += $value['total_amount'];
        		$discount_amount += $value['discount_amount'];
        	}

        	$order['sub_total'] = $sub_total;
        	$order['discount_amount'] = $discount_amount;

            // calculate total amount
        	$order['total_amount'] = $sub_total + $discount_amount;

            // creates order reference no
        	$order['reference_no'] = Helper::instance()->referenceNumber();

        	// insert new order
            $order_id = DB::table('orders')
            	->insertGetId($order);

            $updateCart['customer_id'] = $order['customer_id'];
            $updateCart['order_id'] = $order_id;
            $updateCart['updated_at'] = $order['updated_at'];

            // update carts with the newly created order ID
            $cart = CartController::updateCartOrderId($updateCart);

            // checks if it was successful
            if (!$cart['status']) 
            {
            	throw new Exception($cart['message']);
            }

        	$message = "Order created successfully";

        	// gets newly created order
            $order = $this->getOrder($order_id);

            // convert to JSON
        	$order = json_decode(json_encode($order), true);

        	// checks if it exist
            if (!$order['status']) 
        	{
        		throw new Exception($order['message']);
        	}

        	$order['message'] = $message;
            $response = $order;

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
