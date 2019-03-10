import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class _RandomWordsState extends State<RandomWords> {
  final List<WordPair> _suggestions = List<WordPair>();
  final TextStyle _biggerFont = const TextStyle(fontSize: 18.0);
  final Set<WordPair> _savedSuggestions = Set<WordPair>();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      // Add from here...
      appBar: new AppBar(
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.list),
            onPressed: () {
              _navigateToFavorited();
            },
          )
        ],
        title: new Text('Startup Name Generator'),
      ),
      body: _buildSuggestions(),
    );
  }

  Widget _buildSuggestions() {
    return ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemBuilder: (BuildContext _context, int i) {
          if (i.isOdd) {
            return Divider();
          }

          final int index = i ~/ 2;
          if (index >= _suggestions.length) {
            _suggestions.addAll(generateWordPairs().take(10));
          }

          return _buildRow(_suggestions[index]);
        });
  }

  Widget _buildRow(WordPair pair) {
    final bool _alreadySaved = _savedSuggestions.contains(pair);

    return ListTile(
      title: Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
      trailing: Icon(
        _alreadySaved ? Icons.favorite : Icons.favorite_border,
        color: _alreadySaved ? Colors.pink : null,
      ),
      onTap: () {
        setState(() {
          if (_alreadySaved) {
            _savedSuggestions.remove(pair);
          } else {
            _savedSuggestions.add(pair);
          }
        });
      },
    );
  }

  void _navigateToFavorited() {
    Navigator.of(context)
        .push(MaterialPageRoute<void>(builder: (BuildContext _context) {
      final Iterable<ListTile> tiles = _savedSuggestions.map((WordPair pair) {
        return ListTile(
            title: Text(
          pair.asPascalCase,
          style: _biggerFont,
        ));
      });

      final List<Widget> divided =
          ListTile.divideTiles(tiles: tiles, context: _context).toList();

      return new Scaffold(
        appBar: new AppBar(
          title: const Text('Saved Suggestions'),
        ),
        body: new ListView(children: divided),
      );
    }));
  }
}

class RandomWords extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _RandomWordsState();
}
