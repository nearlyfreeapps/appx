# Appx

[![Build Status](https://travis-ci.org/nearlyfreeapps/appx.svg?branch=master)](https://travis-ci.org/nearlyfreeapps/appx)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'appx'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install appx

## Usage

```ruby
require 'appx'

appx = Appx::File('path/to/file.appx')

puts appx.manifest.identity_name
puts appx.manifest.version
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/nearlyfreeapps/appx.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

