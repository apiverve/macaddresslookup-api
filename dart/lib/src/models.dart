/// Response models for the MAC Address Lookup API.

/// API Response wrapper.
class MacaddresslookupResponse {
  final String status;
  final dynamic error;
  final MacaddresslookupData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  MacaddresslookupResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory MacaddresslookupResponse.fromJson(Map<String, dynamic> json) => MacaddresslookupResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? MacaddresslookupData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the MAC Address Lookup API.

class MacaddresslookupData {
  String? mac;
  bool? isValid;
  String? vendor;
  String? oui;
  MacaddresslookupDataFormats? formats;
  MacaddresslookupDataAddressing? addressing;

  MacaddresslookupData({
    this.mac,
    this.isValid,
    this.vendor,
    this.oui,
    this.formats,
    this.addressing,
  });

  factory MacaddresslookupData.fromJson(Map<String, dynamic> json) => MacaddresslookupData(
      mac: json['mac'],
      isValid: json['isValid'],
      vendor: json['vendor'],
      oui: json['oui'],
      formats: json['formats'] != null ? MacaddresslookupDataFormats.fromJson(json['formats']) : null,
      addressing: json['addressing'] != null ? MacaddresslookupDataAddressing.fromJson(json['addressing']) : null,
    );
}

class MacaddresslookupDataFormats {
  String? colon;
  String? dash;
  String? dot;
  String? raw;

  MacaddresslookupDataFormats({
    this.colon,
    this.dash,
    this.dot,
    this.raw,
  });

  factory MacaddresslookupDataFormats.fromJson(Map<String, dynamic> json) => MacaddresslookupDataFormats(
      colon: json['colon'],
      dash: json['dash'],
      dot: json['dot'],
      raw: json['raw'],
    );
}

class MacaddresslookupDataAddressing {
  String? castType;
  bool? isMulticast;
  bool? isBroadcast;
  String? administration;
  bool? isLocallyAdministered;

  MacaddresslookupDataAddressing({
    this.castType,
    this.isMulticast,
    this.isBroadcast,
    this.administration,
    this.isLocallyAdministered,
  });

  factory MacaddresslookupDataAddressing.fromJson(Map<String, dynamic> json) => MacaddresslookupDataAddressing(
      castType: json['castType'],
      isMulticast: json['isMulticast'],
      isBroadcast: json['isBroadcast'],
      administration: json['administration'],
      isLocallyAdministered: json['isLocallyAdministered'],
    );
}

class MacaddresslookupRequest {
  String mac;
  bool? addressing;

  MacaddresslookupRequest({
    required this.mac,
    this.addressing,
  });

  Map<String, dynamic> toJson() => {
      'mac': mac,
      if (addressing != null) 'addressing': addressing,
    };
}
