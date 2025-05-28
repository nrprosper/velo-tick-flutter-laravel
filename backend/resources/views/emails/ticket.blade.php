@php use Carbon\Carbon; @endphp
    <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Your Ticket Confirmation</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f9f9f9;
            color: #333;
        }

        .container {
            padding: 20px;
            background: #ffffff;
            max-width: 600px;
            margin: auto;
            border-radius: 8px;
            box-shadow: 0 2px 6px rgba(0, 0, 0, 0.1);
        }

        h2 {
            color: #1e40af;
        }

        .ticket-info {
            margin-top: 20px;
        }

        .ticket-info p {
            margin: 6px 0;
        }

        .qr-code {
            margin-top: 20px;
            text-align: center;
        }

        .footer {
            margin-top: 30px;
            font-size: 13px;
            color: #666;
            text-align: center;
        }
    </style>
</head>
<body>
<div class="container">
    <h2>Booking Confirmed!</h2>
    <p>Dear customer,</p>

    <p>Your booking was successful. Below are the details of your ticket:</p>

    <div class="ticket-info">
        <p><strong>From:</strong> {{ $ticketData['origin'] }}</p>
        <p><strong>To:</strong> {{ $ticketData['destination'] }}</p>
        <p><strong>Seat Number:</strong> {{ $ticketData['seat_number'] }}</p>
        <p><strong>Price:</strong> {{ number_format($ticketData['price']) }} RWF</p>
        <p><strong>Distance:</strong> {{ $ticketData['distance'] }} km</p>
        <p><strong>Estimated Travel Time:</strong> {{ $ticketData['travel_time'] }}</p>
        <p><strong>Departure Time:</strong> {{ Carbon::parse($ticketData['departure_time'])->format('d M Y, h:i A') }}
        </p>
        <p><strong>Arrival Time:</strong> {{ Carbon::parse($ticketData['arrival_time'])->format('d M Y, h:i A') }}</p>
    </div>

    <div class="qr-code">
        <p><strong>Scan this QR Code at boarding:</strong></p>
        <img src="{{ $ticketData['qr_code_url'] }}" alt="Ticket QR Code" width="150">
    </div>

    <p>Thank you for booking with us. We wish you a safe and pleasant journey!</p>

    <div class="footer">
        &copy; {{ date('Y') }} VeloTick. All rights reserved.
    </div>
</div>
</body>
</html>
