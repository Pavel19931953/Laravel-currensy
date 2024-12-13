<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up()
    {
        Schema::table('currencies', function (Blueprint $table) {
            $table->decimal('rate', 15, 6)->change();
        });
    }

    public function down()
    {
        Schema::table('currencies', function (Blueprint $table) {
            $table->decimal('rate', 10, 4)->change();
        });
    }
};
