<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateProductsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('products', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('status')->default(0);
            $table->string('is_bundle')->default('no');
            $table->string('name')->unique();
            $table->double('price', 8,2);
            $table->string('description');
            $table->double('discount',8,2)->default(0);
            $table->string('colors')->nullable();
            $table->string('sizes')->nullable();
            $table->string('gender')->default('f-m');
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
        Schema::dropIfExists('products');
    }
}
