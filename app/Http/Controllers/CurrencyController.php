<?php

namespace App\Http\Controllers;

use App\Models\Currency;
use Illuminate\Http\Request;

class CurrencyController extends Controller
{
    // Метод для отображения формы конвертации
    public function showConverterForm()
    {
        // Получаем список всех валют из базы данных
        $currencies = Currency::pluck('code'); // Извлекаем коды валют
        return view('currency.converter', compact('currencies')); // Передаём валюты в представление
    }

    // Метод для обработки конвертации валют
    public function convert(Request $request)
    {
        // Валидация входящих данных
        $validated = $request->validate([
            'from' => 'required|string|exists:currencies,code',
            'to' => 'required|string|exists:currencies,code',
            'amount' => 'required|numeric|min:0.01',
        ]);

        // Получаем информацию о валюте от и к
        $fromCurrency = Currency::where('code', $validated['from'])->first();
        $toCurrency = Currency::where('code', $validated['to'])->first();

        // Конвертация суммы
        $convertedAmount = ($validated['amount'] / $fromCurrency->rate) * $toCurrency->rate;

        // Возвращаем результат в формате JSON
        return response()->json([
            'converted_amount' => round($convertedAmount, 2)
        ]);
    }
}
