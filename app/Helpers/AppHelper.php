<?php
namespace App\Helpers;

class AppHelper
{

	/**
     * Show success message.
     *
     * @return $response
     */
	public function successResponse($message, $queryResponse = null)
	{
		//check if $queryResponse is empty and return $response without response key
		if ($queryResponse == null) {
			return $response = array(
	            'status' => true,
	            'message' => $message
	        );
		}

		return array(
            'status' => true,
            'message' => $message,
            'response' => $queryResponse
        );
	}

	/**
     * Show exception errors.
     *
     * @return $response
     */
	public function errorResponse($e)
	{
		return $response = array(
            'status' => false,
            'message' => $e->getMessage()
        );
	}

	public function referenceNumber() {

		$t = microtime(true);
        $micro = sprintf("%06d",($t - floor($t)) * 1000000);
        $d = new \DateTime( date('Y-m-d H:i:s.'.$micro, $t) );
        $now = $d->format("Y-m-d H:i:s:u:v");
        $reference_no = wordwrap(
        	str_shuffle(
        		strtoupper(
        			substr(
        				md5($now), 0, 10)
        		)
        	)
        	, 3, '-', true
        );

        return $reference_no;
	}

	public static function instance()
	{
		return new AppHelper();
	}
}