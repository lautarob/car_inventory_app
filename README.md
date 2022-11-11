# Car Inventory App
## Tech

Carp Inventory App uses a number of open source projects to work properly:

- [Ruby on Rails] - For the backend
- [Docker] - For virtualization

## Installation

Car Inventoy App requires [Ruby on Rails](https://rubyonrails.org) v7+ to run.

1- run docker build .
2- run docker-compose up
3- run docker exec car_inventory_app_app_1 rake db:create
4- run docker exec car_inventory_app_app_1 rake db:migrate
5- run docker exec car_inventory_app_app_1 rake db:seed

The app is running on localhost:3000
