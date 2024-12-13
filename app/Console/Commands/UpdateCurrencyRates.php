<?php

namespace App\Console\Commands;

use App\Models\Currency;
use App\Services\CurrencyService;
use Illuminate\Console\Command;

class UpdateCurrencyRates extends Command
{
    protected $signature = 'currency:update-rates';
    protected $description = 'Update currency exchange rates';

    public function handle(CurrencyService $currencyService)
    {
        $rates = $currencyService->fetchRates()['rates'];

        foreach ($rates as $code => $rate) {
            Currency::updateOrCreate(
                ['code' => $code],
                ['rate' => $rate]
            );
        }

        $this->info('Currency rates updated successfully.');
    }
}

