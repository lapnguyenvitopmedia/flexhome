<?php

use Botble\RealEstate\Models\Account;
use Botble\RealEstate\Models\Property;
use Faker\Factory;
use Illuminate\Database\Seeder;

class AccountSeeder extends Seeder
{
    public function run()
    {
        $faker = Factory::create();

        Account::truncate();

        Account::create([
            'first_name'   => $faker->firstName,
            'last_name'    => $faker->lastName,
            'email'        => 'john.smith@botble.com',
            'username'     => Str::slug($faker->unique()->userName),
            'password'     => bcrypt('12345678'),
            'dob'          => $faker->dateTime,
            'phone'        => $faker->phoneNumber,
            'description'  => $faker->realText(30),
            'credits'      => 10,
            'confirmed_at' => now(),
        ]);

        for ($i = 0; $i < 10; $i++) {
            Account::create([
                'first_name'   => $faker->firstName,
                'last_name'    => $faker->lastName,
                'email'        => $faker->email,
                'username'     => Str::slug($faker->unique()->userName),
                'password'     => bcrypt($faker->password),
                'dob'          => $faker->dateTime,
                'phone'        => $faker->phoneNumber,
                'description'  => $faker->realText(30),
                'credits'      => $faker->numberBetween(1, 10),
                'confirmed_at' => now(),
            ]);
        }

        $properties = Property::get();

        foreach ($properties as $property) {
            $property->author_id = Account::inRandomOrder()->value('id');
            $property->author_type = Account::class;
            $property->save();
        }
    }
}
