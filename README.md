# Summary

* MySQL - RDBMS Relational Database Management System
* Database -> Tables -> Relationships
* There's usually a Database per Application
    * There's also one user per database
* MySQL is a client-server system
    * server - `mysql.server start`
    * client - `mysql -u root -p`
* Users (username + host) -> privileges over databases
* How to manage (create/drop)
    * Users
    * Tables
* A common set operations over tables
    * CRUD (Create/Read/Update/Delete)
    * create / select / update / delete
* Select + Update + Delete
    * Where clause -> Acts like a filter
* Migrations and seeders
    * migrations (SQL script) that creates our tables
        * `mysql -u root -p < migrations.sql`
    * seeder SQL script that populates those tables
        * `mysql -u root -p < seeders.sql`

