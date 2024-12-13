<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Currency Converter</title>
    <style>
        /* Общий стиль для страницы */
        body {
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            background-color: #f4f4f9;
            margin: 0;
        }

        /* Контейнер формы */
        #convert-form-container {
            width: 100%;
            max-width: 400px;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        /* Стили для формы */
        #convert-form label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
            color: #333;
        }

        #convert-form select,
        #convert-form input[type="number"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 16px;
        }

        #convert-form button {
            width: 100%;
            padding: 12px;
            font-size: 16px;
            font-weight: bold;
            color: #fff;
            background-color: #28a745;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        #convert-form button:hover {
            background-color: #218838;
        }

        /* Стиль для вывода результата */
        #result {
            margin-top: 20px;
            font-size: 18px;
            font-weight: bold;
            color: #333;
        }

        /* Стиль для ошибок */
        #result p.error {
            color: #e74c3c;
        }
    </style>
</head>
<body>

<div id="convert-form-container">
    <form action="{{ route('convert') }}" method="POST" id="convert-form">
        @csrf
        <label for="from">From Currency:</label>
        <select name="from" required>
            <option value="">Select Currency</option>
            @foreach($currencies as $currency)
                <option value="{{ $currency }}">{{ $currency }}</option>
            @endforeach
        </select>

        <label for="to">To Currency:</label>
        <select name="to" required>
            <option value="">Select Currency</option>
            @foreach($currencies as $currency)
                <option value="{{ $currency }}">{{ $currency }}</option>
            @endforeach
        </select>

        <label for="amount">Сумма:</label>
        <input type="number" name="amount" placeholder="Enter amount" required min="0.01" step="0.01">

        <button type="submit">Convert</button>
    </form>

    <div id="result"></div>
</div>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
    $(document).ready(function() {
        $('#convert-form').on('submit', function(event) {
            event.preventDefault();

            $.ajax({
                url: $(this).attr('action'),
                type: 'POST',
                data: $(this).serialize(),
                success: function(response) {
                    $('#result').html(
                        `<p>Converted Amount: ${response.converted_amount}</p>`
                    );
                },
                error: function(xhr) {
                    $('#result').html(
                        `<p class="error">Error: ${xhr.responseJSON.message}</p>`
                    );
                }
            });
        });
    });
</script>

</body>
</html>
