<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\Customer;
use Illuminate\Database\QueryException;
use Exception;
use Hash;

use DB;
use \App\Helpers\AppHelper as Helper;

class CustomerController extends Controller
{

    /**
     * Display all customers.
     *
     * @return \Illuminate\Http\Response
     */
    public function getCustomers($limitPerPage = 20)
    {
        // Get customers

        try 
        {
            // gets all customers
            $customers = DB::table('customers')
                ->paginate($limitPerPage);

            $message = 'Customers retrieved';
            
            // format response from AppHelper
            $response = Helper::instance()->successResponse($message, $customers);

            // checks if there are customers
            $checkCustomers = json_decode(json_encode($customers), true);
            if (!$checkCustomers['data']) 
            {
                $message = 'No customers found';
                $response['data'] = array();
            
            // format response from AppHelper
                $response = Helper::instance()->successResponse($message, $response);
            }

        } catch (QueryException $e) 
        {   
            // Catch query exception
            $response = Helper::instance()->errorResponse($e);
        } catch (Exception $e) 
        {
            // Catch throwed exception
            $response = Helper::instance()->errorResponse($e);;
        }

        // Return collection of customers
        return $response;
    }

    /**
     * Display the specified customer id.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function getCustomerById($id)
    {
        try 
        {
            // gets a customer
            $customer = DB::table('customers')->where('id', $id)->first();

            // checks if customer exist
            if (!$customer) 
            {
                throw new Exception("Customer not found");
            }

            $message = 'Customer retrieved';
            $response['data'] = $customer;
            
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

        // return customer
        return $response;
    }

    /**
     * Display the specified customer by email.
     *
     * @param  int  $email
     * @return \Illuminate\Http\Response
     */
    public function getCustomerByEmail($email)
    {
        // gets customer using email
        $customer = DB::table('customers')
            ->where('email', $email)->first();

        return $customer;
    }

    /**
     * Display the specified customer by phone.
     *
     * @param  int  $phone
     * @return \Illuminate\Http\Response
     */
    public function getCustomerByPhone($phone)
    {
        // gets customer using phone
        $customer = DB::table('customers')
            ->where('phone', $phone)->first();

        return $customer;
    }

    /**
     * Store a newly created customer.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function newCustomer(Request $request)
    {
        try 
        {
            // gets inputs request
            $customer['fullname'] = $request->input('fullname');
            $customer['gender'] = $request->input('gender');
            $customer['phone'] = $request->input('phone');
            $customer['email'] = $request->input('email');
            $customer['address'] = $request->input('address');
            $customer['password'] = $request->input('password');
            $customer['created_at'] = date("Y-m-d H:i:s");
            $customer['updated_at'] = date("Y-m-d H:i:s");

            // Validates user inputs
            $validatedData = $request->validate([
                'fullname' => 'required|string|min:6',
                'gender' => 'required|string|max:1',
                'phone' => 'required|min:11',
                'email' => 'required|string|min:10',
                'address' => 'required|string|min:10',
                'password' => 'required|min:6',
            ]);

            // checks if email exist
            $checkEmail = json_decode(json_encode(
                $this->getCustomerByEmail($customer['email'])
            ), true);
            if ($checkEmail) 
            {
                throw new Exception("Email address already exit");
            }

            // checks if phone exist
            $checkPhone = json_decode(json_encode(
                $this->getCustomerByPhone($customer['phone'])
            ), true);
            if ($checkPhone) 
            {
                throw new Exception("Phone number already exist");
            }

            // encrypt password
            $customer['password'] = Hash::make($customer['password']);

            // checks if password needs to be re-encrypted
            if (Hash::needsRehash($customer['password']))
            {
                $customer['password'] = Hash::make($customer['password']);
            }

            // insert customer
            $customer_id = DB::table('customers')
                ->insertGetId($customer);

            // checks if insertion was successful
            if (!$customer_id) 
            {
                throw new Exception("Customer was not added");
            }

            $message = 'Customer has been added successfully';

            // gets customer
            $getCustomer = $this->getCustomerById($customer_id);
            $getCustomer['message'] = $message;
            $response = $getCustomer;

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
            $customer['id'] = $request->input('id');
            $customer['fullname'] = $request->input('fullname');
            $customer['gender'] = $request->input('gender');
            $customer['phone'] = $request->input('phone');
            $customer['email'] = $request->input('email');
            $customer['address'] = $request->input('address');
            $customer['updated_at'] = date("Y-m-d H:i:s");

            // Validates user inputs
            $validatedData = $request->validate([
                'id' => 'required|numeric|min:1',
                'fullname' => 'required|string|min:6',
                'gender' => 'required|string|max:1',
                'phone' => 'required|min:11',
                'email' => 'required|string|min:10',
                'address' => 'required|string|min:10',
            ]);

            // checks if email exist
            $checkEmail = json_decode(json_encode(
                $this->getCustomerByEmail($customer['email'])
            ), true);
            if ($checkEmail['email']) 
            {
                // checks if email belongs to another customer
                if ($checkEmail['id'] != $customer['id']) 
                {
                    throw new Exception("Email address already exit");
                }
            }

            // checks if phone exist
            $checkPhone = json_decode(json_encode(
                $this->getCustomerByPhone($customer['phone'])
            ), true);
            if ($checkPhone['phone'])
            { 
                // checks if phone belongs to another customer
                if ($checkPhone['id'] != $customer['id']) 
                {
                    throw new Exception("Phone number already exit");
                }
            }

            // update customer record
            $updateCustomer = DB::table('customers')
                ->where('id', $customer['id'])
                ->update([
                    'fullname' => $customer['fullname'],
                    'gender' => $customer['gender'],
                    'phone' => $customer['phone'],
                    'email' => $customer['email'],
                    'address' => $customer['address'],
                    'updated_at' => $customer['updated_at'],
                ]);

            // checks if update was successful
            if (!$updateCustomer) 
            {
                throw new Exception("Customer was not updated");
            }

            $message = 'Customer has been updated successfully';

            // gets customer
            $getCustomer = $this->getCustomerById($customer['id']);
            $getCustomer['message'] = $message;
            $response = $getCustomer;

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
    public function delete($id)
    {
        try 
        {    
            // checks if ID is empty
            if (empty($id))
            {
                throw new Exception("No ID found");
            }

            // delete customer
            $response = DB::table('customers')
                ->where('id', $id)
                ->delete();

            // checks if delete was successful
            if (!$response) 
            {
                throw new Exception("Customer not found");
            }

            $message = 'Customer has been deleted successfully';
            
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
     * validate customer id.
     * @param  int  $id
     * @return boolean
     */
    public static function validateCustomer($id)
    {
        // creates instance of CustomerController
        $customer = new CustomerController();

        // gets customer using ID
        $isCustomer = $customer->getCustomerById($id);

        // checks if customer exist
        if (!$isCustomer['status']) 
        {
            throw new Exception($isCustomer['message']);
        }

        // return records
        return $isCustomer['response']['data'];

    }
}
