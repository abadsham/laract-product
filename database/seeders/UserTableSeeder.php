<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class UserTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        User::create([
            'name' => 'Aan Satu',
            'email' => 'aan1@gmail.com',
            // 'username' => 'aan1',
            'password' => bcrypt('password')
        ]);
        User::create([
            'name' => 'Aan Dua',
            'email' => 'aan2@gmail.com',
            // 'username' => 'aan2',
            'password' => bcrypt('password')
        ]);
    }
}
