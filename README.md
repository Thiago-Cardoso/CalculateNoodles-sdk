# The CalculateNoodles-sdk Ruby gem

<p>
  <a href="https://github.com/Thiago-Cardoso/CalculateNoodles-sdk">
    <img alt="Current Version" src="https://img.shields.io/badge/version-1.0.0 -blue.svg">
  </a>
  <a href="https://ruby-doc.org/core-2.7">
    <img alt="Ruby Version" src="https://img.shields.io/badge/Ruby-2.7 -green.svg" target="_blank">
  </a>
</p>

# CalculateNoodles
Calculation of cooking time for instant noodles problem.
## Installation

Add this line to your application's Gemfile:

```ruby
gem 'CalculateNoodles', :git =>'git://github.com/Thiago-Cardoso/CalculateNoodles-sdk.git' 

```

And then execute:

$ bundle install


## Usage Example

**CalculateNoodles (Calculation of cooking time for instant noodles problem)**

```ruby
time_cook: 3
time_hourglass_one: 5
time_hourglass_two: 7
CalculateNoodles::Calculate.new(time_cook, time_hourglass_one, time_hourglass_two).calculate_time
```

## Running tests

CalculateNoodles-sdk uses Rspec as test framework.

- Running all tests:

```bash
rspec spec
```

- Running tests for an specific file:

```bash
rspec spec/CalculateNoodles_spec.rb
```

## Supported Ruby Versions

This library aims to support and is the following Ruby versions:

- Ruby 2.6
- Ruby 2.7

## Authors

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
<!-- prettier-ignore -->
[<img src="https://avatars1.githubusercontent.com/u/1753070?s=460&v=4" width="100px;"/><br /><sub><b>Thiago Cardoso</b></sub>](https://github.com/Thiago-Cardoso)<br />

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/Thiago-Cardoso/CalculateNoodles-sdk.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
