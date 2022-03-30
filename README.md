# Restaurant Management System

## Aims and Objectives
The aim of this project is to create a system that can be used to execute the operations of a restaurant from front to back. This includes the management side as well as daily operations.

## Project Infrastructure
This project will be built as a monolith. This means that everything will be in one place, making it easier to set up and work on.

## Ideas and Features
* A system for the front of house that will allow orders to be created and monitored.
* A system for the back of house that will receive orders and update statuses.
* A system for overall system management that will let the office organise the restaurant.
* An API that will allow integrations to be created for the system
* A website that allows users to create and track orders as well as manage bookings.

This is a web application that for a restaurant. The application covers the main interactive endpoints of a restaurant.
* Administrator
* Kitchen / Chef
* Waiter / Front-of-house
* Customer / Website Takeaway

## Contributing and Source Control
The project uses the develop branch as the primary branch and the main branch to store the working build. This is because there are plans to eventually add in CI/CD to this project so that when develop is merged into the main branch, the main branch will be deployed.

## Getting Started
This project uses the following versions
* ruby 3.0.2p107
* Rails 7.0.2.3
```ruby
bundle install
rails db:create
rails db:migrate
```

##  Usage
To run the application, run the command
```ruby
rails s
```
