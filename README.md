# Habit Tracker App (Ruby on Rails)

[View the Live App on Heroku](https://frozen-plains-83661-38536826bbb5.herokuapp.com/)

A simple, full-stack Ruby on Rails application to track your daily habits and build consistency!


Features

- User authentication (sign up, login, logout) with Devise
- Create, edit, and delete habits
- Daily check-ins for each habit
- Habit progress visualization via calendar
- User-friendly design with Bootstrap
- Habit streak tracking 

## Tools Used

- [Ruby on Rails](https://rubyonrails.org/)
- [PostgreSQL](https://www.postgresql.org/)
- [Devise](https://github.com/heartcombo/devise) for authentication
- [Bootstrap](https://getbootstrap.com/) for UI design
- [Heroku](https://www.heroku.com/) for deployment

## How to Get Started

### Prerequisites

- Ruby (3.x recommended)
- Rails (7.x recommended)
- PostgreSQL
- Node.js

### Installation

```bash
git clone https://github.com/your-username/habit-tracker.git
cd habit-tracker

bundle install

rails db:create
rails db:migrate

# Start the server
rails server
