<?php

namespace App\Services;

use Illuminate\Support\Facades\Http;

class CurrencyService
{
    // URL API для получения курсов валют
    protected $apiUrl = 'https://api.exchangeratesapi.io/v1/latest';

    /**
     * Получает курсы валют с API
     *
     * @return array|null
     */
    public function fetchRates()
    {
        // Выполняем HTTP-запрос к API
        $response = Http::get($this->apiUrl, [
            'access_key' => env('EXCHANGE_API_KEY')
        ]);

        // Проверяем, успешен ли ответ
        if ($response->successful()) {
            // Возвращаем данные в формате массива
            return $response->json();
        }

        // Если ответ неуспешен, можно обработать ошибку
        // Например, логируем ошибку или выбрасываем исключение
        \Log::error('Currency API request failed', [
            'status' => $response->status(),
            'response' => $response->body(),
        ]);

        return null; // Возвращаем null в случае ошибки
    }
}
