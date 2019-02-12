# prototype-api

Manage a list of products that have prices. 

Enable the administrator to set concrete prices (such as 10EUR) and discounts to prices either by a concrete amount (-1 EUR) or by percentage (-10%). 

Enable the administrator to group products together to form bundles (which is also a product) that have independent prices. 

Enable customers to get the list of products and respective prices. 

Enable customers to place an order for one or more products, and provide customers with the list of products and the total price.

etc.


# Getting started

## Installation 

Please check the official laravel installation guide for server requirements before you start. Official Documentation. These project was built on Laravel 5.5

Clone the repository

	git clone https://github.com/vinnoangel/prototype-api.git

Switch to the repo folder

edit .env file and change the database name if you want
create the database in you Xampp or Wampp etc
Then export prototype_api.sql (inside the root folder) to the your database

Start the local development server

	php artisan serve

You can now access the server at http://localhost:8000 using POSTMAN

Or create a vitual host



# Endpoints:

## Example request body:

	{
		"name": "John Stones",
		"email": "stones@.gmail.com",
		"phone": "053377488",
		"password": "stonesj"
	}

	Default limitPerPage = 20;

# Administrators:
	Get all administrators
	Method: GET  					
	Endpoint: /api/administrators/:limitPerPage	 		
	Parameters (optional): limitPerPage 

	Get administrator
	Method: GET  					
	Endpoint: /api/administrator	 		
	Parameters: id

	Create administrator
	Method: POST  					
	Endpoint: /api/administrator	 		
	Parameters: name, email phone, password

	Update administrator
	Method: PUT  					
	Endpoint: /api/administrator	 		
	Parameters: id, name, email phone

	Delete administrator
	Method: DELETE  					
	Endpoint: /api/administrator/:id	 		
	Parameters: id


# Customers:
	Get all customers
	Method: GET  					
	Endpoint: /api/customers/:limitPerPage	 		
	Parameters (optional): limitPerPage 

	Get customer
	Method: GET  					
	Endpoint: /api/customer/:id	 		
	Parameters: id

	Create customer
	Method: POST  					
	Endpoint: /api/customer	 		
	Parameters: name, email, phone, gender, address, password

	Update customer
	Method: PUT  					
	Endpoint: /api/customer	 		
	Parameters: id, name, email, phone, gender, address

	Delete customer
	Method: DELETE  					
	Endpoint: /api/customer/:id	 		
	Parameters: id


# Products:
	Get all products
	Method: GET  					
	Endpoint: /api/products/:limitPerPage	 		
	Parameters (optional): limitPerPage 

	Get product
	Method: GET  					
	Endpoint: /api/product/:id	 		
	Parameters: id

	Create product
	Method: POST  					
	Endpoint: /api/product	 		
	Parameters: name, price, description, admin_id
	Optional parameters: gender, discount, colors, sizes

	Update product
	Method: PUT  					
	Endpoint: /api/product	 		
	Parameters: id, name, price, description, admin_id
	Optional parameters: gender, discount, colors, sizes

	Delete product
	Method: DELETE  					
	Endpoint: /api/product/:id/:admin_id	 		
	Parameters: id, admin_id


# Bundles:
	Get all bundles
	Method: GET  					
	Endpoint: /api/bundles/:limitPerPage	 		
	Parameters (optional): limitPerPage 

	Get bundle
	Method: GET  					
	Endpoint: /api/bundle/:id	 		
	Parameters: id

	Create bundle
	Method: POST  					
	Endpoint: /api/bundle	 		
	Parameters: name, price, description, admin_id
	Optional parameters: discount

	Update bundle
	Method: PUT  					
	Endpoint: /api/bundle	 		
	Parameters: id, name, price, description, admin_id
	Optional parameters: discount

	Delete bundle
	Method: DELETE  					
	Endpoint: /api/bundle/:id/:admin_id	 		
	Parameters: id, admin_id


# Carts:
	Get all customer product in carts
	Method: GET  					
	Endpoint: /api/carts/:customer_id	 		
	Parameters: customer_id 

	Create cart
	Method: POST  					
	Endpoint: /api/cart	 		
	Parameters: customer_id, product_id
	Optional parameters: quantity (will be set to 1 if empty)

	Update cart
	Method: PUT  					
	Endpoint: /api/cart	 		
	Parameters: customer_id, product_ids, quantities
	NB: product_ids and quantities must be an array
	example 
	{
		"customer_id": "John Stones",
		"product_ids": [2,4,5],
		"quantities": [10,20,2]
	}

	Delete cart
	Method: DELETE  					
	Endpoint: /api/cart/:customer_id/:product_id	 		
	Parameters: customer_id, product_id


# Orders:
	Get all orders
	Method: GET  					
	Endpoint: /api/orders/:admin_id/:limitPerPage	 		
	Parameters: admin_id, limitPerPage 

	Get an order
	Method: GET  					
	Endpoint: /api/orders/:order_id	 		
	Parameters: order_id

	Create order
	Method: POST  					
	Endpoint: /api/order	 		
	Parameters: customer_id
