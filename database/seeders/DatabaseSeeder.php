<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        // \App\Models\User::factory(10)->create();

        // \App\Models\User::factory()->create([
        //     'name' => 'Test User',
        //     'email' => 'test@example.com',
        // ]);
		
		$this->call(UsersTableSeeder::class);
        $this->call(VendorsTableSeeder::class);
        $this->call(CustomersTableSeeder::class);
        $this->call(CategoriesTableSeeder::class);
        $this->call(ProductsTableSeeder::class);
        $this->call(CartsTableSeeder::class);
		$this->call(TransactionsTableSeeder::class);
        $this->call(OrdersTableSeeder::class);
        $this->call(ReviewsTableSeeder::class);
        $this->call(PaymentsTableSeeder::class);
        
         
    }
}
