
import 'dart:convert';

import 'package:bovespa_app/models/market_time.dart';

class Company {
  String symbol;
  String name;
  String companyName;
  String document;
  String description;
  String website;
  String region;
  String currency;
  MarketTime marketTime;
  double marketCap;
  double price;
  double changePercent;
  String updatedAt;

  Company(
      {this.symbol,
      this.name,
      this.companyName,
      this.document,
      this.description,
      this.website,
      this.region,
      this.currency,
      this.marketTime,
      this.marketCap,
      this.price,
      this.changePercent,
      this.updatedAt});

}
