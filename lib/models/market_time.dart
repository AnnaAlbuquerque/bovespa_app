import 'dart:convert';

class MarketTime {
  final String open;
  final String close;
  final int timezone;

  MarketTime({
    this.open,
    this.close,
    this.timezone,
  });

  Map<String, dynamic> toMap() {
    return {
      'open': open,
      'close': close,
      'timezone': timezone,
    };
  }

  factory MarketTime.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
  
    return MarketTime(
      open: map['open'],
      close: map['close'],
      timezone: map['timezone'],
    );
  }

  String toJson() => json.encode(toMap());

  factory MarketTime.fromJson(String source) => MarketTime.fromMap(json.decode(source));
}
