import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    // TODO: implement build

    return MaterialApp(
        title: "welcome to my house",
        home: RanDomWords(),
      theme: ThemeData(
        primaryColor: Colors.yellowAccent
      ),




    );


  }
}

class RanDomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => new RandomWordsState();
}

class RandomWordsState extends State<RanDomWords> {
  @override
  final List<WordPair> _words = <WordPair>[];
  final Set<WordPair> _save = new Set<WordPair>();
  final _biggerFont = const TextStyle(fontSize: 18.0);
  Widget build(BuildContext context) {
    // TODO: implement build
    final wordPair = WordPair.random();
    return Scaffold(
      appBar: AppBar(
        title: Text('English'),
        actions: <Widget>[
          new IconButton(icon: const Icon(Icons.list), onPressed: _pushSaved)
        ],
      ),
      body: Center(child: ListView.builder(itemBuilder: (context, index) {
        if (index.isOdd) {
          return Divider();
        }
        if (index >= _words.length) {
          _words.addAll(generateWordPairs().take(10));
        }
        return _buildRow(_words[index]);
      })),
    );
  }

  Widget _buildRow(WordPair wordPair) {
    final bool alreadySaved = _save.contains(wordPair);
    return ListTile(
      title: Text(
        wordPair.asPascalCase,
        style: _biggerFont,
      ),
      trailing: new Icon(
        alreadySaved ? Icons.favorite : Icons.favorite_border,
        color: alreadySaved ? Colors.red : null,
      ),
      onTap: () {
        setState(() {
          if (alreadySaved) {
            _save.remove(wordPair);
          } else {
            _save.add(wordPair);
          }
        });
      },
    );
  }

  void _pushSaved() {
    Navigator.of(context)
        .push(new MaterialPageRoute(builder: (BuildContext context) {
      final Iterable<ListTile> tiles = _save.map((WordPair pair) {
        return new ListTile(
          title: new Text(
            pair.asPascalCase,
            style: _biggerFont,
          ),
        );
      });
      final List<Widget> divided = ListTile.divideTiles(tiles: tiles,context: context).toList();

      return new Scaffold(
        appBar: new AppBar(
          title: const Text('List Saved'),
        ),
        body: new ListView(children: divided,),
      );
    }));

  }
}
