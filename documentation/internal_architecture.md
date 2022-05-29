# Internal Architecture

## General Info

"Menu Management Backend" is an api built in Ruby on Rails with the most up-to-date technologies for a take home assignment. This assignment has three levels, and assumptions made throughout were only for the levels being worked on, and not future levels. This is to demonstrate the ability to write extensible, modular, well-tested and modifiable code. Testing throughout the assignment was done following TDD principles and using the Red-Green-Refactor cycle.

This document contains all information pertaining to database schemas, decisions made throughout the assignment and why, technologies used, functionality and general thought processes. 

## Table of Contents
* [Languages and Technologies](#languages-and-technologies)
* [Level One: Basics](#level-one-basics)

## Languages and Technologies
This project is created with:
* Ruby 3.0.0
* Rails 7.0.3

Database:
* PG 1.3

Testing:
* Factory_Bot_Rails 6.2
* rSpec-Rails 6.0.0.rc1
* Shoulda-Matchers 5.1

Linting:
* Rubocop 1.30
* Rubocop-Rails 2.14
* Rubocop-rSpec 2.11

Security:
* Brakeman 5.2
* Bundler-Audit 0.9.1
* Figaro 1.2
* Ruby_Audit 2.1

Error Monitoring and Notifier:
* Airbrake 13.0

## Level One: Basics

The tasks given for level one were to create an Object Model for `Menu` and `MenuItem` classes. `Menu` has many `MenuItem`s and both have typical data associated with restaurants. All behaviour in this level is illustrated via validation and association unit tests using rSpec.

## Database Schema

![Level 1 Schema](./images/level-one-db-schema.png)

For the `Menu` Table I added some of the fields I thought would be most commonly used. 'Start_time' and 'End_time' are optional fields for time-limited menus such as breakfast, lunch and dinner. 'Is_active' was added incase certain menus were no longer used or became unavailable. I thought about adding a 'category' field and including a table for commonly used menu types but decided to keep it out to stay as close to the requirements of the assignment as possible.

For the `MenuItem`s table, most of the fields are self-explanatory. I added an optional 'quantity' field incase menus wanted to have multiple options such as 2 spring rolls for a certain price, while 3 would be priced at a deal. 

## CI/CD with Automated Testing

For this assignment, I wanted to try my best to recreate a production level application, so I implimented CI/CD using Github Actions. Checks include automated testing, lint checks, security vulnerability checks(Brakeman and Ruby_Audit) and patch-level verification for bundler(Bundler-Audit).



