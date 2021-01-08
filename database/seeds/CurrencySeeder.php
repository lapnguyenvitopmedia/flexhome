<?php

use Botble\RealEstate\Models\Currency;
use Illuminate\Database\Seeder;

class CurrencySeeder extends Seeder
{
    public function run()
    {
        Currency::truncate();

        $currencies = [
            [
                'title'            => 'USD',
                'symbol'           => '$',
                'is_prefix_symbol' => true,
                'order'            => 0,
                'decimals'         => 0,
                'is_default'       => 1,
                'exchange_rate'    => 1,
            ],
            [
                'title'            => 'VND',
                'symbol'           => '₫',
                'is_prefix_symbol' => false,
                'order'            => 1,
                'decimals'         => 0,
                'is_default'       => 0,
                'exchange_rate'    => 23203,
            ],
        ];

        foreach ($currencies as $currency) {
            Currency::create($currency);
        }
    }
}
