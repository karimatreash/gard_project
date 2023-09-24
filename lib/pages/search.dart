import 'package:easy_search_bar/easy_search_bar.dart';
import 'package:flutter/material.dart';
class search extends StatefulWidget {

  const search({super.key});

  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {
  String searchValue = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: EasySearchBar(
backgroundColor: Colors.white,
        title:Center(child: Text('Find Priduct')),
          titleTextStyle:TextStyle(color: Colors.blue[900]
          ,fontSize: 20) ,
           iconTheme: IconThemeData(color: Colors.blue[900],size: 25),
          onSearch: (value)=> setState(() => searchValue = value),
        ),



    );
  }
}
