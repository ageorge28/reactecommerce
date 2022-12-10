<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('cart_orders', function (Blueprint $table) {
            $table->id();
            $table->string('invoice_no');
            $table->string('product_name');
            $table->string('product_code');
            $table->string('size')->nullable();
            $table->string('color')->nullable();
            $table->unsignedInteger('quantity');
            $table->decimal('unit_price');
            $table->decimal('total_price', 10, 2);
            $table->string('email');
            $table->string('name');
            $table->string('payment_method');
            $table->text('delivery_address');
            $table->string('city');
            $table->decimal('delivery_charge');
            $table->date('order_date');
            $table->string('order_time');
            $table->string('order_status');
            $table->boolean('payment_status')->default(0);
            $table->string('image')->nullable();
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
        Schema::dropIfExists('cart_orders');
    }
};
