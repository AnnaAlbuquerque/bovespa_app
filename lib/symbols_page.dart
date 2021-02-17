import 'package:flutter/material.dart';
import 'package:bovespa_app/utils/symbols_map.dart';

class SymbolsPage extends StatefulWidget {
  SymbolsPage({Key key}) : super(key: key);

  @override
  _SymbolsPageState createState() => _SymbolsPageState();
}

class _SymbolsPageState extends State<SymbolsPage> {
  TextEditingController searchController = TextEditingController();

  //list with all company names in the map symbolsMap
  List<String> allSymbols = symbolsMap.keys.toList();
  List<String> symbolList = List<String>();

  @override
  void initState() { 
    super.initState();
    //initially symbolList is equal to allSymbols, since we're not using search
    symbolList.addAll(allSymbols);    
  }

  void _filterSearchResults (String query){
    if(query.isNotEmpty){
      List<String> auxListData = List<String>();
      allSymbols.forEach((element) { 
        if (element.toLowerCase().contains(query)){
          auxListData.add(element);
        }
      });
      setState(() {
        symbolList.clear();
        symbolList.addAll(auxListData);
      });
      return;
    } else{
      setState(() {
        symbolList.clear();
        symbolList.addAll(allSymbols);
      });
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BOVESPA App"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(9.0),
            child: TextField(
                controller: searchController,
                decoration: const InputDecoration(
                  labelText: "Pesquisar",
                  labelStyle: TextStyle(
                    color: Colors.black,
                  ),
                  suffixIcon: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  filled: true,
                  fillColor: Color.fromRGBO(151, 151, 151, 0.5),
                  border: InputBorder.none,
                ),
                onChanged: (value) { 
                  _filterSearchResults(value); 
                },
              ),
          ),
          Expanded(
            flex: 1,
            child: _symbolsList(symbolList),
          ),
        ],
      ),
    );
  }
}

Widget _symbolsList(List<String>list){
  return Scrollbar(
      child: ListView.separated(
      itemCount: list.length,
      itemBuilder: (context,index){
        return ListTile(
          title:Text(list[index]),
        );
      }, 
      separatorBuilder: (BuildContext context, int index) => Divider(),
    ),
  );
}