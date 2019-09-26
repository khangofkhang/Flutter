import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  title: "Material demo",
  home: MyApp(),
));

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.menu),tooltip: "Navigation Menu", onPressed: null),
        title: Center(
          child: Text('hello world'),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'seach',
            onPressed: null,
          )
        ],
      ),
      body: Center(
        child: Text('he lo cac ban minh la KK'),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Add',
        child: Icon(Icons.add),
        onPressed: null,
      ),
    );
  }
}