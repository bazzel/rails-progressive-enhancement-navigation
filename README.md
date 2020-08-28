# Rails Progressive Enhancement Navigation

## Introduction

...

## Prerequisites

- Install [all requirements](https://gorails.com/setup/osx/10.15-catalina) on your machine

## Installation

```
$ git clone https://github.com/bazzel/rails-progressive-enhancement-navigation
$ cd rails-progressive-enhancement-navigation
$ rbenv install `cat .ruby-version` # assuming you use rbenv.
$ bundle install
$ yarn install
$ bin/rails db:setup
```

## Running / Development

- `bin/rails s`
- `bin/webpack-dev-server`
- Visit your app at [http://localhost:3000](http://localhost:3000).

### Populate the database

The project comes with a `seed.rb` which you can use to populate your development environment:

`bin/rails db:seed`

## Technical details

...

## Deployment

The application is hosted by [Heroku](https://rails-navigation.herokuapp.com/).