/// MAC Address Lookup API client for Dart/Flutter
///
/// MAC Address Lookup validates any MAC address and converts it across standard colon, dash, dot, and raw hex formats. Add addressing=true to read whether it is unicast, multicast or broadcast, and on paid plans whether it is universal or locally administered (the mark of a randomized private address). On paid plans it also becomes a MAC vendor lookup API, adding the device hardware vendor and OUI identifier.
///
/// For more information, visit: https://apiverve.com/marketplace/macaddresslookup?utm_source=dart&utm_medium=referral&utm_content=readme
library apiverve_macaddresslookup;

export 'src/client.dart';
export 'src/models.dart';
