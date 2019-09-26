import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main(){
  runApp(
    MaterialApp(
      title: 'My app',
      home: MyScaffold(),
    )
  );
}
class MyAppBar extends StatelessWidget{
  MyAppBar({this.title});
  final Widget title;
  @override
  Widget build(BuildContext context){
    return Container(
      height: 56.0,
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(color: Colors.blue),
      child: Row(
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            tooltip: "Navigation Menu",
            onPressed: null,
          ),
          Expanded(
            child: title,
          ),
          IconButton(
            icon: Icon(Icons.search),
            tooltip: "Seach",
            onPressed: null,
          )
        ],
      ),
    );
  }
}
class MyScaffold extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Material(
      child: Column(
        children: <Widget>[
          MyAppBar(title: Text(
            "example Hello Aloha",
            style: Theme.of(context).primaryTextTheme.title,
          ),
        ),
        Expanded(
          child: Center(
            child: Text('Hello World'),
          ),
        )
        ],
      ),
    );
  }
}

