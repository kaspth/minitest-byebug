# Minitest::Byebug

Start a [byebug](https://github.com/deivid-rodriguez/byebug) session when a test fails.
Heavily inspired by [minitest-debugger](https://github.com/seattlerb/minitest-debugger)

## Installation

Add this line to your application's Gemfile:

    gem 'minitest-byebug'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install minitest-byebug

## Usage

Add this to the top of your test file or helper:

```ruby
require 'minitest/byebug' if ENV['DEBUG']
```

Then run your tests as normal but define `DEBUG=1`.

`% DEBUG=1 rake test`

## Todo

- [ ] Stop in the failed test. e.g. at an assert call.
- [ ] Stop on errors.

## Credits

Distributed with an MIT License.

Contributions more than welcome.

Made by Kasper Timm Hansen
GitHub: [@kaspth](https://github.com/kaspth)
Twitter: [@kaspth](https://twitter.com/kaspth)
