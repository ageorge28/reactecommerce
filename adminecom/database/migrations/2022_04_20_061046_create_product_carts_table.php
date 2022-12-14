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
        Schema::create('product_carts', function (Blueprint $table) {
            $table->id();
            $table->string('image');
            $table->string('email');
            $table->string('product_name');
            $table->string('product_code');
            $table->string('size')->nullable();
            $table->string('color')->nullable();
            $table->unsignedInteger('quantity');
            $table->decimal('unit_price', 10, 2);  
            $table->decimal('total_price', 10, 2);           
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
        Schema::dropIfExists('product_carts');
    }
};
