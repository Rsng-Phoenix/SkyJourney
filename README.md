# SkyJourney


**✈️ SkyJourney - Flight Booking Web App**


**SkyJourney is a complete PHP-based flight booking simulation website, featuring:**

    City-to-city flight search (India)

    Auto-suggest dropdown for cities

    Passenger details form (multi-passenger support)

    Fake payment screen with auto-formatting for card inputs

    PDF ticket generation with logo, QR, payment summary, and masked card info

    📄 Built using HTML, CSS, JS, PHP, MySQL, FPDF — ideal for learning full-stack basics.



**🧰 Features**

    ✅ Indian cities & airports

    ✅ Realistic flight listing

    ✅ Passenger information & validation

    ✅ Clean UI with mobile responsiveness

    ✅ Fake payment gateway

    ✅ PDF generation with:

            i.   ✈️ Passenger info
    
           ii.  💳 Masked payment summary

          iii. 🧾 Fake transaction ID & timestamp

           iv. 📎 Logo and QR

    ✅ Simple database schema included



**🚀 How to Run This Project**

    📦 Prerequisites:
  
    XAMPP installed (or any Apache + PHP server)

    MySQL enabled in XAMPP



**🧪 Steps to Execute:**

1.Clone or Download this repository

        skyjourney/
        
        ├── assets/               # logos and QR image
        
        ├── css/                  # all stylesheets
        
        ├── js/                   # card input formatting
        
        ├── db/                   # SQL + config
        
        ├── vendor/fpdf/          # FPDF library
        
        ├── index.html            # homepage
        
        ├── passenger-details.php
        
        ├── payment.php
        
        ├── generate_pdf.php      # handles ticket generation
        
        ├── search_flights.php
        

2. Place it inside your htdocs folder (example: C:\xampp\htdocs\skyjourney)

3. Import the database

4. Open phpMyAdmin

       http://localhost/phpmyadmin

6. Create a new database named skyjourney

7. Import the SQL file:
   
       path : skyjourney/db/database-schema.sql

7.Start Apache and MySQL via XAMPP
    Visit the site : http://localhost/skyjourney/
