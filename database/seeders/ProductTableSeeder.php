<?php

namespace Database\Seeders;

use App\Models\Product;
use Illuminate\Database\Seeder;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class ProductTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Product::create([
            'name' => 'Baju Pria',
            'price' => 10000,
            'stock' => 'ada',
            'description' => 'Celana bagus import dari kamboja'
        ]);
        Product::create([
            'name' => 'Celana Kantor',
            'price' => 20000,
            'stock' => 'ada',
            'description' => 'Celana bagus import dari kamboja'
        ]);
    }
}
