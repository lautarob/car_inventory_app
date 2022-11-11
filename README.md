# Car Inventory App
## Tech

Carp Inventory App uses a number of open source projects to work properly:

- [Ruby on Rails] - For the backend
- [Docker] - For virtualization

## Installation

Car Inventoy App requires [Ruby on Rails](https://rubyonrails.org) v7+ to run.

- run docker build .
- run docker-compose up
- run docker exec car_inventory_app_app_1 rake db:create
- run docker exec car_inventory_app_app_1 rake db:migrate
- run docker exec car_inventory_app_app_1 rake db:seed

The app is running on localhost:3000
