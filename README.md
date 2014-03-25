[![Build Status](https://travis-ci.org/junsumida/rack-server_errors.svg?branch=master)](https://travis-ci.org/junsumida/rack-server_errors)

# Rack::ServerErrors

Rack::ServerErrors is a simple Rack middleware which catches exceptions from your Rack application and returns 500 error response in json.

## Installation

Add this line to your application's Gemfile:

    gem 'rack-server_errors', :git => 'https://github.com/junsumida/rack-server_errors.git'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rack-server_errors

## Usage

Just simply add `use Rack::ServerErrors` to your `config.ru` file. For example, 

```ruby
use Rack::ServerErrors
run YourRackApp
```

## Contributing

1. Fork it ( http://github.com/<my-github-username>/rack-server_errors/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
