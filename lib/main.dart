import 'package:flutter/material.dart';

import 'package:bovespa_app/symbols_page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color.fromRGBO(18, 101, 113, 1.0),
      ),
      home: SymbolsPage(),
    )
  );
}

