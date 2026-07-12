# Spectrum Zone 🛒

A responsive online computer hardware store built with PHP and the CodeIgniter framework. Spectrum Zone allows users to browse products, add items to a shopping cart, complete checkout, and view a printable receipt. The project also includes an admin panel for managing products and customer orders.

## 🌟 Features

### User Features

- Browse computer hardware products with images, prices, and descriptions
- View detailed product information
- Filter products by category such as Monitor, Keyboard, Mouse, Processor, RAM, and more
- Add products to the cart and update quantities
- Complete checkout with billing details
- View and print a receipt after purchase
- Register and log in as a customer

### Admin Features

- Add, edit, and delete products
- Upload product images from the admin interface
- View customer orders and billing information
- Update order status as delivered

## 🛠 Tech Stack

### Backend

- **PHP** – Server-side application logic
- **CodeIgniter** – MVC framework for routing, controllers, models, and views
- **MySQL / MariaDB** – Relational database for users, products, cart, billing, and orders
- **Session-Based Authentication** – Simple login state and admin role checks

### Frontend

- **HTML5 / CSS3 / JavaScript** – Core web interface and interaction
- **Bootstrap** – Responsive layout and UI components

## 🚀 Installation & Setup

### Prerequisites

- PHP
- Apache or Nginx web server
- MySQL or MariaDB
- XAMPP, WAMP, or Laragon

### Setup Steps

1. Place the project folder in your web server root directory.
2. Create a MySQL database named `online_computer_hardware_store`.
3. Import the SQL file from [database/online_computer_hardware_store.sql](database/online_computer_hardware_store.sql).
4. Update the database configuration in [application/config/database.php](application/config/database.php).
5. Start Apache and MySQL.
6. Open the project in your browser at `http://localhost/Spectrum-Zone`.

## 🔐 Default Admin Login

A sample admin account is included in the SQL file:

- **Email:** admin@admin.com
- **Password:** admin

## 📁 Project Structure

```text
Spectrum-Zone/
├── application/
│   ├── controllers/       # Request handling for shop, cart, checkout, login, register, admin, and product view
│   ├── models/            # Database operations for products, users, cart, billing, and orders
│   ├── views/             # HTML templates for storefront and admin pages
│   └── config/            # CodeIgniter configuration files
├── assets/                # CSS, JavaScript, images, and frontend resources
├── database/              # SQL dump for database setup
├── uploads/               # Product image files uploaded by admin
├── system/                # CodeIgniter framework core files
└── index.php              # Application entry point
```
