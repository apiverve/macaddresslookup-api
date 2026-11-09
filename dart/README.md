# MAC Address Lookup API - Dart/Flutter Client

MAC Address Lookup validates any MAC address and converts it across standard colon, dash, dot, and raw hex formats. Add addressing=true to read whether it is unicast, multicast or broadcast, and on paid plans whether it is universal or locally administered (the mark of a randomized private address). On paid plans it also becomes a MAC vendor lookup API, adding the device hardware vendor and OUI identifier.

[![pub package](https://img.shields.io/pub/v/apiverve_macaddresslookup.svg)](https://pub.dev/packages/apiverve_macaddresslookup)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [MAC Address Lookup API](https://apiverve.com/marketplace/macaddresslookup?utm_source=dart&utm_medium=referral&utm_content=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_macaddresslookup: ^1.2.5
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_macaddresslookup/apiverve_macaddresslookup.dart';

void main() async {
  final client = MacaddresslookupClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'mac': '00-B0-D0-63-C2-26',
      'addressing': true
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

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
      "dot": "00B0.D063.C226",
      "raw": "00B0D063C226"
    },
    "addressing": {
      "castType": "unicast",
      "isMulticast": false,
      "isBroadcast": false,
      "administration": "universal",
      "isLocallyAdministered": false
    }
  }
}
```

## API Reference

- **API Home:** [MAC Address Lookup API](https://apiverve.com/marketplace/macaddresslookup?utm_source=dart&utm_medium=referral&utm_content=readme)
- **Documentation:** [docs.apiverve.com/ref/macaddresslookup](https://docs.apiverve.com/ref/macaddresslookup?utm_source=dart&utm_medium=referral&utm_content=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme)
