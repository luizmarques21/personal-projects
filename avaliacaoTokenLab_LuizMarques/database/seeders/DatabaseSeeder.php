<?php

namespace Database\Seeders;

use App\Models\Event;
use App\Models\User;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        User::factory()
            ->has(Event::factory()->count(5))
            ->create([
            'email'    => 'teste@mail.com',
            'password' => bcrypt('12345678'),
        ]);

        User::factory()
            ->has(Event::factory()->count(5))
            ->count(10)
            ->create();
    }
}
