# MAC Address Lookup API - Ruby Gem

MAC Address Lookup validates any MAC address and converts it across standard colon, dash, dot, and raw hex formats. On paid plans it becomes a MAC vendor lookup API, adding the device hardware vendor and OUI identifier.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_macaddresslookup'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_macaddresslookup
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_macaddresslookup'

# Initialize the client
client = APIVerve::Macaddresslookup::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({ mac: "00-B0-D0-63-C2-26" })

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ mac: "00-B0-D0-63-C2-26" })
  puts response["data"]
rescue APIVerve::Macaddresslookup::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Macaddresslookup::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Macaddresslookup::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
```

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "mac": "00:B0:D0:63:C2:26",
    "isValid": true,
    "vendor": "Dell Inc.",
    "oui": "00B0D0",
    "formats": {
      "colon": "00:B0:D0:63:C2:26",
      "dash": "00-B0-D0-63-C2-26",
      "dot": "00.B0.D0.63.C2.26",
      "raw": "00B0D063C226"
    }
  }
}
```

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/macaddresslookup?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/macaddresslookup?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/macaddresslookup?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
