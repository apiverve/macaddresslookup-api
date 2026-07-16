# MAC Address Lookup API - PHP Package

MAC Address Lookup is a simple tool for looking up MAC address data. It returns the MAC address vendor, conversions, and more.

## Installation

Install via Composer:

```bash
composer require apiverve/macaddresslookup
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Macaddresslookup\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute(['mac' => '00-B0-D0-63-C2-26']);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Macaddresslookup\Client;
use APIVerve\Macaddresslookup\Exceptions\APIException;
use APIVerve\Macaddresslookup\Exceptions\ValidationException;

try {
    $response = $client->execute(['mac' => '00-B0-D0-63-C2-26']);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/macaddresslookup?utm_source=packagist&utm_medium=readme).

## Support

- Website: [https://apiverve.com/marketplace/macaddresslookup?utm_source=php&utm_medium=readme](https://apiverve.com/marketplace/macaddresslookup?utm_source=php&utm_medium=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
