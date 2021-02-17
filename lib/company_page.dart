import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class CompanyPage extends StatefulWidget {
  final String symbol;
  CompanyPage({Key key, @required this.symbol}) : super(key: key);

  @override
  _CompanyPageState createState() => _CompanyPageState();
}

class _CompanyPageState extends State<CompanyPage> {
  Dio dio;

  @override
  void initState() {
    super.initState();
    BaseOptions options = new BaseOptions(
      baseUrl: "https://api.hgbrasil.com/finance/stock_price?",
    );
    dio = Dio(options);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.symbol}"),
      ),
    );
  }
}