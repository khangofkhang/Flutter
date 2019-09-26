import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main()=>runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    final wordRand = WordPair.random();
    return MaterialApp(
      title: "ENGLISH_KK",
      home: Scaffold(
        appBar: AppBar(
          title: Text("ENGLISH WITH KHANG")
        ),
        body: Center(
          child: Text(wordRand.asUpperCase),
        ),
      ),
    );
  }
}