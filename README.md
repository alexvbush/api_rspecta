[![Stories in Ready](https://badge.waffle.io/SmartCloud/api_rspecta.png?label=ready&title=Ready)](https://waffle.io/SmartCloud/api_rspecta)
# API_RSpecta

`api_rspecta` adds following helper methods to test your JSON APIs with RSpec:

**JSON:**
- `#json` returns parsed `last_response.body`
- `#refresh_json` reparses `last_response.body`
- `#print_json` to `JSON.pretty_generate` last response JSON
- `#json_has_key` tells you if passed json object has a `key`
- `#json_has_keys` same as above but for a list of keys
- `#json_has_no_key` is opposite to `#json_has_key`

**Response:**
- `should_respond_ok` checks if `last_response.status` was 200
- `should_respond_created` checks if `last_response.status` was 201
- `should_respond_with_no_content` checks if `last_response.status` was 204
- `should_respond_not_authenticated` checks if `last_response.status` was 401
- `should_respond_not_authorized` checks if `last_response.status` was 403
- `should_respond_not_found` checks if `last_response.status` was 404
- `should_respond_with_error_for` checks if `last_response.status` was 422 and that `json` has `errors` for passed `field`
- `should_respond_with_errors_for` same as above but for a list of errors

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'api_rspecta'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install api_rspecta

## Usage

TODO: Write usage instructions here

## Contributing

1. Fork it ( https://github.com/SmartCloud/api_rspecta/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
