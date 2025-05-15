# Velo-Tick - Ticket Booking Management System

Velo-Tick is a ticket booking management system designed to digitize the booking process for bus companies operating in Rwanda and neighboring countries. It consists of two main components: a web application for bus companies to manage trips and administrative tasks, and a mobile application for clients to book seats, manage trips, and handle payments.

## Features
### Web App for Bus Companies
- Manage bus trips and schedules
- Track seat bookings and availability
- Generate and manage ticket QR codes
- Administer users with roles and permissions
- Access booking analytics and reports

### Mobile App for Clients
- Search and book bus seats
- View and manage trip bookings
- Process secure payments
- Validate tickets via QR code scanning
- Manage user profiles

### Technologies Used Backend
- Laravel 12: PHP framework for the backend
- MySQL: Database hosted on freesqldatabase.com
- Cloudinary: Storage for ticket QR codes
- Spatie Roles and Permissions: User role and permission management
- Docker: Containerization for deployment

### Mobile App
- Flutter: Cross-platform mobile app framework
- Dio: API request handling
- GetX: Routing management
- Riverpod: State management

## Deployment
- Backend hosted on Render
- Docker image available on Docker Hub

## Repositories
- Backend & Mobile App: https://github.com/nrprosper/velo-tick-flutter-laravel
- Web App: https://github.com/Muhinde234/Velotick-fn (by Muhinde Igirimpuhwe Dositha)

## Installation Instructions

### Prerequisites

- PHP and Composer (for Laravel)
- Flutter SDK (for the mobile app)
- Docker (optional, for containerized deployment)
- Git (for cloning repositories)

### Backend Setup

1. Clone the repository:
```bash
git clone https://github.com/nrprosper/velo-tick-flutter-laravel.git
```


2. Navigate to the backend directory:
```bash 
cd velo-tick-flutter-laravel/backend
```

3. Install PHP dependencies:
```bash
composer install
```
4. Configure environment variables:
    - Copy `.env.example` to `.env`
    - Update `.env` with your MySQL database credentials (from freesqldatabase.com) and Cloudinary API keys
- Run database migrations and seed data:
```php 
php artisan migrate --seed
```
- Start the Laravel server:
```php
 php artisan serve
 ```

Alternatively, use Docker:
```bash
docker pull nprosper/velotick-backend
docker run -p 8000:8000 nprosper/velotick-backend
```


## Web App Setup

1. Clone the web app repository:
```bash 
git clone https://github.com/Muhinde234/Velotick-fn.git
```

2. Navigate to the directory:
```bash
cd Velotick-fn
```

3. Follow specific setup instructions in the repository’s `README` (e.g., install dependencies and start the server).

## Mobile App Setup

1. Ensure Flutter is installed and configured.
2. Navigate to the mobile app directory:
```bash 
cd velo-tick-flutter-laravel/mobile
```

3. Install Flutter dependencies:
```bash 
flutter pub get
```

3. Run the app on an emulator or device:
```bash 
flutter run
```

## Usage

## Mobile App

- Launch the app on your device
- Register or log in
- Search for available trips, book seats, and manage your bookings

## Deployment

- The backend is deployed on Render: https://velotick-backend.onrender.com
- The MySQL database is hosted on https://freesqldatabase.com
- Dockerized backend is available on Docker Hub

## Contributing
We welcome contributions! To get started:

- Fork the repository
- Create a branch for your feature or fix (`git checkout -b feature-name`)
- Commit your changes (`git commit -m "Add feature`)
- Push to your branch (`git push origin feature-name`)
- Open a pull request with a detailed description


## Contact

- Prosper NISHIMWE RUKUNDO - prosper.rk1@gmail.com
- Muhinde Igirimpuhwe Dositha - igirimpuhwedositha@gmail.com

