# 🌱 Online Fertilizer Shop

An **Online Fertilizer Shop Management System** developed using **Java, JSP/Servlet, and MySQL**.

The application provides an online platform for users/farmers to browse fertilizer products, view categories, manage their cart, place orders, view orders, submit feedback, and manage their profiles.

The system also provides a dedicated **Admin Panel** to manage products, farmers, orders, order cancellations, order history, reports, and customer feedback.

---

## ✨ Features

### 👤 User Module

- User Registration & Login
- User Dashboard
- Browse Fertilizer Categories
- Browse Fertilizer Products
- View Product Details
- Add Products to Cart
- Place Orders
- View Orders
- Manage User Profile
- Submit Feedback
- Logout

### 🔐 Admin Module

- Admin Login
- Admin Dashboard
- Product Management
- Farmer Management
- Order Management
- Order Cancellation
- Order History
- Sales Reports
- Customer Feedback
- Total Sales Overview
- Logout

---

## 🛠️ Tools & Technologies

### 💻 Technologies Used

- ☕ Java
- 🌐 JSP
- ⚙️ Servlet
- 🗄️ MySQL
- 🎨 HTML5
- 🎨 CSS3
- ⚡ JavaScript

### 🔧 Development Tools

- Eclipse IDE
- Apache Tomcat
- MySQL Workbench
- Git & GitHub

---

## 🏗️ Project Architecture

The application follows a **Java Web Application architecture** consisting of separate User and Admin modules connected with a MySQL database.

```text
                    Online Fertilizer Shop
                             │
              ┌──────────────┴──────────────┐
              │                             │
        👤 User Module                 🔐 Admin Module
              │                             │
      ┌───────┼────────┐          ┌─────────┼─────────┐
      │       │        │          │         │         │
    Login   Products   Cart     Products   Orders   Reports
      │       │        │          │         │         │
      │     Orders   Feedback   Farmers   History  Feedback
      │       │        │          │         │         │
      └───────┴────────┘          └─────────┴─────────┘
              │                             │
              └──────────────┬──────────────┘
                             │
                       🗄️ MySQL Database

```

---

👤 User Dashboard

The User Dashboard provides users with easy access to the main features of the fertilizer shop, including Home, Categories, Orders, Cart, Feedback, Profile, and Logout.

The home page also provides a Shop Now option and highlights Organic, Chemical, and Bio Fertilizer Products.


![User Dashboard](user-dashboard.png)

🔐 Admin Dashboard

The Admin Dashboard provides a centralized interface for managing and monitoring the fertilizer shop.

The dashboard provides access to Home, Products, Farmers, Orders, Order Cancel, Order History, Reports, Feedback, and Logout.

It also displays important system information such as:

📦 Products
👨‍🌾 Farmers
🧾 Orders
💰 Total Sales
💬 Feedback


![Admin Dashboard](admin-dashboard.png)



👤 User Dashboard Highlights

The User Dashboard is designed to provide a simple and convenient shopping experience.

Main Options
🏠 Home – Access the main shop page.
📚 Categories – Browse fertilizer categories.
📦 Orders – View user orders.
🛒 Cart – Manage selected products.
💬 Feedback – Submit feedback.
👤 Profile – Manage user profile.
🚪 Logout – Exit the application.
Fertilizer Products

The home page highlights different types of fertilizer products:

🌱 Organic Fertilizers
🧪 Chemical Fertilizers
🌿 Bio Fertilizers
🔐 Admin Dashboard Highlights

The Admin Panel provides a centralized interface for monitoring and managing the application.

Main Options
🏠 Home
📦 Products
👨‍🌾 Farmers
🧾 Orders
❌ Order Cancel
🔄 Order History
📊 Reports
💬 Feedback
🚪 Logout
Dashboard Overview

The Admin Dashboard displays key information such as:

Dashboard Metric	Displayed Value
📦 Products	17
👨‍🌾 Farmers	18
🧾 Orders	16
💰 Total Sales	18830.0
💬 Feedback	6

These values represent the data displayed in the current dashboard screenshot.

🗄️ Database

The application uses MySQL as the database management system for storing and managing application data.

The database is used for operations related to:

User / Farmer Information
Product Information
Fertilizer Categories
Orders
Order History
Order Cancellation
Feedback
Sales Information
🚀 How to Run
Prerequisites

Make sure the following software is installed:

Java JDK
Eclipse IDE
Apache Tomcat
MySQL
MySQL Workbench
Steps
Clone the repository.
Open Eclipse IDE.
Import the project into Eclipse.
Configure Apache Tomcat Server.
Create the required database in MySQL.
Import the required database tables and data.
Configure the database connection.
Start the Apache Tomcat Server.
Run the project from Eclipse.
Open the application in a web browser.
🎯 Project Objective

The main objective of this project is to develop a simple and efficient Online Fertilizer Shop Management System that allows users/farmers to access fertilizer products and manage their shopping activities online.

The system also provides administrators with a centralized platform to manage products, farmers, orders, order history, cancellations, reports, and feedback.

🔮 Future Enhancements

The following features can be added in future versions:

💳 Online Payment Gateway
📧 Email / SMS Order Notifications
🔎 Advanced Product Search
⭐ Product Ratings and Reviews
📱 Mobile Application
📈 Advanced Sales Analytics
🚚 Order Delivery Tracking
📦 Real-Time Inventory Updates


