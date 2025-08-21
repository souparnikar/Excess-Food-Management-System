Project Title:
**Excess Food Management System**

Project Description:
The Excess Food Management System is a database-driven web application developed as a mini project for the 4th-semester Database Management Systems (DBMS) course. The objective of the project is to provide a structured platform for collecting surplus food from donors and redistributing it efficiently to various recipients like NGOs, orphanages, bus stands, and railway stations through assigned delivery personnel, under the supervision of an administrator.

The system is implemented using:

Frontend: HTML, CSS, JavaScript
Backend: PHP
Database: MySQL (via XAMPP and phpMyAdmin)

Core Modules & Roles:
1. Donors (Users)
Register and log in to donate excess food.
Submit details like food type, quantity, expiration time, and pickup address.
View previous donation history.

2. Admin
Manages all users, donations, and delivery assignments.
Assigns donated food to delivery personnel based on recipient location.
Oversees feedback, verifies records, and ensures data consistency.

3. Delivery Personnel
Receive assigned donation tasks.
View pickup and drop-off locations.
Update delivery status (e.g., Picked Up, In Transit, Delivered).

4. Recipients
Food is delivered to recipients categorized into:
NGOs
Orphanages
Bus Stands
Railway Stations

5. Feedback
Donors or recipients can leave feedback on the donation or delivery experience.

Database Structure (10 Tables):
users – Stores donor information
user_feedback – Collects feedback from users
food_donations – Records donation details (food type, quantity, etc.)
ngos – List and details of partnered NGOs
orphanages – Details of registered orphanages
bus_stands – Recipient info for food delivery to bus stands
railway_stations – Info on railway station recipients
recipients – Links donation with final destination (NGO/orphanage/etc.)
admin – Admin credentials and privileges
delivery_persons – Delivery staff details and their task status

The database is normalized up to Third Normal Form (3NF) to reduce redundancy and maintain data consistency. Proper primary keys, foreign keys, and constraints are implemented to ensure relational integrity and accurate data flow between entities.

Learning Outcomes:
Real-world application of DBMS concepts like data modeling, normalization, and SQL.
Understanding of relational database design and entity relationships.
Full-stack development experience using PHP and MySQL.
Insight into social impact through the redistribution of excess food.
