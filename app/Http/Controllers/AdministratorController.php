<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\Administrator;
use Illuminate\Database\QueryException;
use Exception;
use Hash;

use DB;
use \App\Helpers\AppHelper as Helper;

class AdministratorController extends Controller
{

    /**
     * Display all administrators.
     *
     * @return \Illuminate\Http\Response
     */
    public function getAdministrators($limitPerPage = 20)
    {
        // Get administrators

        try 
        {
            // get all administrators
            $administrators = DB::table('administrators')
                ->paginate($limitPerPage);

            $message = 'Administrators retrieved';
            
            // format response from AppHelper
            $response = Helper::instance()->successResponse($message, $administrators);

            // checks if there are no administrators
            $checkAdministrators = json_decode(json_encode($administrators), true);
            if (!$checkAdministrators['data']) 
            {
                $message = 'No administrators found';
            
            	// format response from AppHelper
                $response = Helper::instance()->successResponse($message, $administrators);
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

        // Return collection of administrators
        return $response;
    }

    /**
     * Display the specified administrator id.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function getAdministratorById($id)
    {
        try 
        {

            // get a administrator using ID
            $administrator = DB::table('administrators')
                ->where('id', $id)->first();

            // checks if ID is found
            if (!$administrator) 
            {
                throw new Exception("Administrator not found");
            }

            $message = 'Administrator retrieved';

            // assign database response to data key
            $response['data'] = $administrator;
            
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

        // return administrator
        return $response;
    }

    /**
     * Display the specified administrator by email.
     *
     * @param  int  $email
     * @return \Illuminate\Http\Response
     */
    public function getAdministratorByEmail($email)
    {
        // get a administrator using email
        $administrator = DB::table('administrators')
            ->where('email', $email)->first();

        // return response
        return $administrator;
    }

    /**
     * Display the specified administrator by phone.
     *
     * @param  int  $phone
     * @return \Illuminate\Http\Response
     */
    public function getAdministratorByPhone($phone)
    {

        // get a administrator using phone
        $administrator = DB::table('administrators')
            ->where('phone', $phone)->first();

        // return response
        return $administrator;
    }

    /**
     * Store a newly created administrator.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function newAdministrator(Request $request)
    {
        try 
        {
            // get all input data
            $administrator['name'] = $request->input('name');
            $administrator['phone'] = $request->input('phone');
            $administrator['email'] = $request->input('email');
            $administrator['password'] = $request->input('password');
            $administrator['created_at'] = date("Y-m-d H:i:s");
            $administrator['updated_at'] = date("Y-m-d H:i:s");

            // Validates user inputs
            $validatedData = $request->validate([
                'password' => 'required|min:6',
                'name' => 'required|string|min:6',
                'phone' => 'required|min:11',
                'email' => 'required|string|min:10',
            ]);

            // checks if email exist
            $checkEmail = json_decode(json_encode(
                $this->getAdministratorByEmail($administrator['email'])
            ), true);
            if ($checkEmail) 
            {
                throw new Exception("Email address already exist");
            }

            // checks if phone exist
            $checkPhone = json_decode(json_encode(
                $this->getAdministratorByPhone($administrator['phone'])
            ), true);
            if ($checkPhone) 
            {
                throw new Exception("Phone number already exist");
            }

            // encrypt password
            $administrator['password'] = Hash::make($administrator['password']);

            // checks if password needs to be re-encrypted
            if (Hash::needsRehash($administrator['password']))
            {
                $administrator['password'] = Hash::make($administrator['password']);
            }

            // insert into database
            $id = DB::table('administrators')
                ->insertGetId($administrator);

            // checks if insertion was successful
            if (!$id) 
            {
                throw new Exception("Administrator was not added");
            }

            $message = 'Administrator has been added successfully';
            $administrator['id'] = $id;

            // assign database response to data key
            $response['data'] = $administrator;

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
            $administrator['id'] = $request->input('id');
            $administrator['name'] = $request->input('name');
            $administrator['phone'] = $request->input('phone');
            $administrator['email'] = $request->input('email');
            $administrator['updated_at'] = date("Y-m-d H:i:s");

            // Validates user inputs
            $validatedData = $request->validate([
                'id' => 'required|numeric|min:1',
                'name' => 'required|string|min:6',
                'phone' => 'required|min:11',
                'email' => 'required|string|min:10',
            ]);

            // checks if email exist
            $checkEmail = json_decode(json_encode(
                $this->getAdministratorByEmail($administrator['email'])
            ), true);
            if ($checkEmail['email']) 
            {
                // checks if email belongs to another administrator
                if ($checkEmail['id'] != $administrator['id']) 
                {
                    throw new Exception("Email address already exist");
                }
            }

            // checks if phone exist
            $checkPhone = json_decode(json_encode(
                $this->getAdministratorByPhone($administrator['phone'])
            ), true);
            if ($checkPhone['phone'])
            { 
                // checks if phone belongs to another administrator
                if ($checkPhone['id'] != $administrator['id']) 
                {
                    throw new Exception("Phone number already exist");
                }
            }

            // updates database
            $response = DB::table('administrators')
                ->where('id', $administrator['id'])
                ->update([
                    'name' => $administrator['name'],
                    'phone' => $administrator['phone'],
                    'email' => $administrator['email'],
                    'updated_at' => $administrator['updated_at'],
                ]);

            // checks if update was succesful
            if (!$response) 
            {
                throw new Exception("Administrator was not updated");
            }

            $message = 'Administrator has been updated successfully';

            // get administrator records
            $response = $this->getAdministratorById($administrator['id']);
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
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function delete($id)
    {
        try 
        {
            // deletes record
            $response = DB::table('administrators')
                ->where('id', $id)
                ->delete();

            // checks if delete was successful
            if (!$response) 
            {
                throw new Exception("Administrator not found");
            }

            $message = 'Administrator has been deleted successfully';
            
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
     * validate administrator id.
     * @param  int  $id
     * @return boolean
     */
    public static function validateAdministrator($id)
    {
        // creates instance of AdministratorController
        $administrator = new AdministratorController();

        // get a administrator using ID
        $isAdministrator = $administrator->getAdministratorById($id);

        // checks if status is false
        if (!$isAdministrator['status']) 
        {
            throw new Exception($isAdministrator['message']);
        }

        // return records
        return $isAdministrator['response']['data'];

    }
}
