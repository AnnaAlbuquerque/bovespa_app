
import 'dart:convert';

import 'package:bovespa_app/models/market_time.dart';

class Symbol {
  final String symbol;
  final String name;
  final String company_name;
  final String document;
  final String description;
  final String website;
  final String region;
  final String currency;
  final MarketTime maket_time;
  final double market_cap;
  final double price;
  final double change_percent;
  final String updated_at; 
  
  Symbol({
    this.symbol,
    this.name,
    this.company_name,
    this.document,
    this.description,
    this.website,
    this.region,
    this.currency,
    this.maket_time,
    this.market_cap,
    this.price,
    this.change_percent,
    this.updated_at,
  });


  Map<String, dynamic> toMap() {
    return {
      'symbol': symbol,
      'name': name,
      'company_name': company_name,
      'document': document,
      'description': description,
      'website': website,
      'region': region,
      'currency': currency,
      'maket_time': maket_time?.toMap(),
      'market_cap': market_cap,
      'price': price,
      'change_percent': change_percent,
      'updated_at': updated_at,
    };
  }

  factory Symbol.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
  
    return Symbol(
      symbol: map['symbol'],
      name: map['name'],
      company_name: map['company_name'],
      document: map['document'],
      description: map['description'],
      website: map['website'],
      region: map['region'],
      currency: map['currency'],
      maket_time: MarketTime.fromMap(map['maket_time']),
      market_cap: map['market_cap'],
      price: map['price'],
      change_percent: map['change_percent'],
      updated_at: map['updated_at'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Symbol.fromJson(String source) => Symbol.fromMap(json.decode(source));
}
