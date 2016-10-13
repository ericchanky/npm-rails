# npm-rails
Short description and motivation.

## Usage
How to use my plugin.
```init
rake npm:init

# config/initializers/assets
Rails.application.config.assets.paths << Rails.root.join('node_modules')
```

Install npm library
```install_package
rake npm:install
```

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'npm-rails', git: 'https://github.com/ericchanky/npm-rails.git'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install npm-rails
```

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
