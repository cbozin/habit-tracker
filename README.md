# Habit Tracker App (Ruby on Rails)

A simple, full-stack Ruby on Rails application to track your daily habits and build consistency!

Features

- User authentication (sign up, login, logout) with Devise
- Create, edit, and delete habits
- Daily check-ins for each habit
- Habit progress visualization (calendar or list format)
- Mobile-friendly design with TailwindCSS or Bootstrap
- Optional: Streak tracking and habit success rate

## Tools Used

- [Ruby on Rails](https://rubyonrails.org/)
- [Devise](https://github.com/heartcombo/devise)
- [PostgreSQL](https://www.postgresql.org/)
- [TailwindCSS](https://tailwindcss.com/) or [Bootstrap](https://getbootstrap.com/)
- [RSpec](https://rspec.info/) or Minitest
- [Render](https://render.com/) or [Heroku](https://www.heroku.com/) for deployment

## How to Get Started

### Prerequisites

- Ruby (3.x recommended)
- Rails (7.x recommended)
- PostgreSQL
- Node.js and Yarn (for TailwindCSS support)

### Installation

```bash
git clone https://github.com/your-username/habit-tracker.git
cd habit-tracker

bundle install
yarn install

rails db:create
rails db:migrate

# Start the server
rails server
