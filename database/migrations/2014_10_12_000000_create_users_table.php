<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('users', function (Blueprint $table) {
			$table->id();
            $table->string('email')->unique();  
            $table->string('password');
						$table->string('mobile_number')->nullable();
            $table->string('user_role');
            $table->boolean('is_active')->default(1); 
            $table->rememberToken(); 
            $table->timestamp('email_verified_at')->nullable(); 
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('users');
    }
};
