<?php

namespace Database\Factories;

use App\Models\Product;
use Illuminate\Support\Str;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Transaction>
 */
class TransactionFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'refrence_no' => Str::random(10),
            'price' => fake()->randomNumber(5),
            'quantity' => fake()->randomNumber(1),
            'payment_amount' => fake()->randomNumber(8),
            'product_id' => Product::factory()->create()->id,
        ];
    }
}
