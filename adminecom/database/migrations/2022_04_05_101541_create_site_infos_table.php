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
        Schema::create('site_infos', function (Blueprint $table) {
            $table->id();
            $table->text('about', 50000);
            $table->text('refund', 50000);
            $table->text('profile', 50000)->nullable();
            $table->text('purchase', 50000);
            $table->text('privacy', 50000);
            $table->string('address', 500);
            $table->string('email', 255);
            $table->string('android');
            $table->string('ios');
            $table->string('facebook');
            $table->string('twitter');
            $table->string('instagram');
            $table->string('copyright', 500);
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
        Schema::dropIfExists('site_infos');
    }
};
