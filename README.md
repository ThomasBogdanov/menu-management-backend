# Menu Management Backend

"Menu Management Backend" is an api built in Ruby on Rails with the most up-to-date technologies for a take home assignment. This assignment has three levels, and assumptions made throughout were only for the levels being worked on, and not future levels. This is to demonstrate the ability to write extensible, modular, well-tested and modifiable code. Testing throughout the assignment was done following TDD principles and using the Red-Green-Refactor cycle.

Most of the info for the project is found at https://github.com/ThomasBogdanov/menu-management-backend/blob/main/documentation/internal_architecture.md. Please take a look through it! It includes all important information pertaining to database schemas, decisions made throughout the assignment and why, technologies used, functionality and general thought processes. 

# Installation

* Please check that you have Ruby installed properly. This project uses Ruby 3.0.0 and Rails 7.0.3

* Clone this repository to your local machine

* Prepare the API using the following commands:

    * Install all necessary gems by running
        ```
        bundle insall
        ```
    
    * Create the database
        ```
        bin/rails db:create
        ```

    * Migrate everything needed!
        ```
        bin/rails db:migrate
        ```

    * Finally run the project by running
        ```
        rails s
        ```

    * To run test suites - a code coverage report will be generated after it's done!
        ```
        rspec spec
        ```

## Usage

* The only endpoint currently working on the project is a POST request to 'localhost:3000/restaurants' for the assignment's requirements

