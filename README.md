# Jungle

A mini e-commerce application built with Rails 4.2 for purposes of teaching Rails by example.

## Final Product
!["Screenshot of home page](https://github.com/MM0nty/Jungle_Rails/blob/9f2b39db0e4e89eb5e9cde81c385b8bb7edacbdb/Documents/Home_Page.png)

!["Screenshot of my cart page](https://github.com/MM0nty/Jungle_Rails/blob/9f2b39db0e4e89eb5e9cde81c385b8bb7edacbdb/Documents/My_Cart_Page.png)

!["Screenshot after paying](https://github.com/MM0nty/Jungle_Rails/blob/9f2b39db0e4e89eb5e9cde81c385b8bb7edacbdb/Documents/Order_Page.png)

## Dependencies

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe

## Getting Started

1. Fork this repository, then clone your fork of this repository.
2. Run `bundle install` to install dependencies
3. Create `config/database.yml` and `config/secrets.yml` by copying `config/database.example.yml` and `config/secrets.example.yml` respectively
4. Run `bin/rake db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server. The app will be served at <http://localhost:3000/>.
4. Go to <http://localhost:3000/> in your browser.

## Additional Steps for Apple M1 Machines

1. Make sure that you are runnning Ruby 2.6.6 (`ruby -v`)
2. Install ImageMagick `brew install imagemagick imagemagick@6 --build-from-source`
3. Remove Gemfile.lock
4. Replace Gemfile with version provided [here](https://gist.githubusercontent.com/FrancisBourgouin/831795ae12c4704687a0c2496d91a727/raw/ce8e2104f725f43e56650d404169c7b11c33a5c5/Gemfile)

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>