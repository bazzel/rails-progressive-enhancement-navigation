# Show all items

This is just Rails 101 - create a new Rails application, generate a new scaffold (we used `Company` for a model) and add a number of items to your database.  
We used [`Faker`](https://github.com/faker-ruby/faker) to generate some random data, but you're free to do otherwise.

We also used [`Ransack`](https://github.com/activerecord-hackery/ransack) to simplify our search form, but other solutions are possible of course.

To get started, follow these steps. We assume you have a development environment that has Ruby, Rails (6.x) and a database server (SQLite is sufficient) installed.

* Create a new Rails app, add some rubygems and generate a scaffold:

        $ rails new [appname]
        $ cd [appname]
        $ bundle add faker ransack
        $ bin/rails g scaffold company name:string:index catch_phrase:string:index
    
* Copy the content of `seeds.rb` shown below to `db/seeds.rb` in your project.
* Run the migration and seed your database:

        $ bin/rails db:migrate
        $ bin/rails db:seed

* Copy the content of `index.html.erb` and `companies_controller.rb` shown below to `app/views/companies/index.html.erb` and `app/controllers/companies_controller.rb` in your project.
* Create the partial `app/views/companies/_company.html.erb` and paste the code from `_company.html.erb` listed below.
    
* Start your Rails server and navigate to [http://localhost:3000/companies](https://hotwire.dev/):
        
        $ bin/rails s
        
If all goes well you should see a page with 1,000 companies.  
Not very interesting, but you're ready to improve you code using [Hotwire](https://hotwire.dev/). And, believe it or not: this was the hardest part.