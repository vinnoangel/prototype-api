<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateOrdersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('orders', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('status')->default(1);
            $table->string('reference_no')->unique();
            $table->integer('customer_id');
            $table->string('voucher_code')->nullable();
            $table->double('shipping_amount', 8, 2)->default(0);
            $table->double('tax_amount', 8, 2)->default(0);
            $table->double('discount_amount', 8, 2)->default(0);
            $table->double('sub_total', 8, 2);
            $table->double('total_amount', 8, 2);
            $table->string('payment_mode')->default('Card payment');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('orders');
    }
}
