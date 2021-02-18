import 'dart:ui';

import 'package:bovespa_app/models/market_time.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:bovespa_app/utils/symbols_map.dart';
import 'package:bovespa_app/models/company.dart';


class CompanyPage extends StatefulWidget {
  final String symbol;
  CompanyPage({Key key, @required this.symbol}) : super(key: key);

  @override
  _CompanyPageState createState() => _CompanyPageState();
}

class _CompanyPageState extends State<CompanyPage> {
  Company company;
  String code;

  @override
  void initState() {
    super.initState();
    code = symbolsMap[widget.symbol];
  }

  Future _getData() async {
    try{
      http.Response response = await http.get("https://api.hgbrasil.com/finance/stock_price?key=4258d518&symbol=$code");
      print(response.body);
      return json.decode(response.body);
    }catch(error){
      throw error;
    }
  }

  void _saveinformation(AsyncSnapshot snapshot){
    MarketTime market = MarketTime(
      open: snapshot.data["results"]["$code"]["market_time"]["open"],
      close: snapshot.data["results"]["$code"]["market_time"]["close"],
      timezone: snapshot.data["results"]["$code"]["market_time"]["timezone"],
    );
    company = Company(
      symbol: snapshot.data["results"]["$code"]["symbol"],
      name:  snapshot.data["results"]["$code"]["name"],
      companyName: snapshot.data["results"]["$code"]["company_name"],
      document:  snapshot.data["results"]["$code"]["document"],
      description: snapshot.data["results"]["$code"]["description"],
      website: snapshot.data["results"]["$code"]["website"],
      region: snapshot.data["results"]["$code"]["region"],
      currency: snapshot.data["results"]["$code"]["currency"],
      marketTime: market,
      marketCap: snapshot.data["results"]["$code"]["market_cap"],
      price: snapshot.data["results"]["$code"]["price"],
      changePercent: snapshot.data["results"]["$code"]["change_percent"],
      updatedAt: snapshot.data["results"]["$code"]["updated_at"],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.symbol}"),
      ),
      body: FutureBuilder(
        future: _getData(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          switch(snapshot.connectionState){
            case ConnectionState.none: case ConnectionState.active: case ConnectionState.waiting:
              return Center(child: CircularProgressIndicator(valueColor: new AlwaysStoppedAnimation<Color>(Theme.of(context).primaryColor),));
            default:
              if(snapshot.hasError){
                return Center(
                  child: Text(
                    "Erro ao carregar os dados",
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                );
              }else{
                _saveinformation(snapshot);
                return _body(context);
              }
          }
        }
      ),
    );
  }

  Widget _body(BuildContext context){
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20.0, left:25.0),
            child: Text(
              company.name ?? "",
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:25.0),
            child: Text(
              company.companyName ?? "",
              style: TextStyle(
                color: Colors.black.withOpacity(0.5),
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 15, 20, 0),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.black.withOpacity(0.15),
              ),
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  _information("Descrição:", company.description, context),
                  _information("CNPJ:", company.document, context),
                  _information("Website:", company.website, context),
                  _information("Região:", company.region, context),
                  _information("Moeda:", company.currency, context),
                  _information("Valor Mercado:", company.marketCap.toString(), context),
                  _information("Preço por Ação:", company.price.toString(), context),
                  _information("Percentual Dia:", company.changePercent.toString(), context),
                  _information("Última Atualização:", company.updatedAt, context),

                  

                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15, bottom:20),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.only(bottomLeft:Radius.circular(20), bottomRight:Radius.circular(20)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Horários de Negociação",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(top:15.0),
                                child: Text(
                                  "Abertura: ${company.marketTime.open}",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top:15.0),
                                child: Text(
                                  "Fechamento: ${company.marketTime.close}",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top:15.0),
                                child: Text(
                                  "Timezone: ${company.marketTime.timezone}",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _information(String tx1, String tx2, BuildContext context){
    return Padding(
      padding: const EdgeInsets.only(left: 10, top: 15.0, right: 10),
      child: RichText(
        text: TextSpan(
          style: DefaultTextStyle.of(context).style,
          children: <TextSpan>[
            TextSpan(
              text: tx1,
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 16.0
              ),
            ),
            TextSpan(
              text: "  ",
            ),
            TextSpan(
              text: tx2 ?? "",
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}