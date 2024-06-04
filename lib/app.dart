import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "some title",
      home: Scaffold(
          appBar: AppBar(
            title: const Center(
              child: Text("welcome to flutter"),
            ),
            backgroundColor: Colors.pink,
          ),
          body: const Center(
            child: RandomWords(),
          )),
    );
  }
}

class RandomWords extends StatefulWidget {
  const RandomWords({super.key});

  @override
  State<StatefulWidget> createState() {
    return _RandomWordsState();
  }
}

class _RandomWordsState extends State<RandomWords> {
  final wordPair = WordPair.random();
  String _words = 'init';
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text('$_count'), Text(_words)],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: _changeWords,
        child: const Icon(Icons.sip),
      ),
    );
  }

  void _changeWords() {
    setState(() {
      _words += wordPair.asPascalCase;
      _count++;
    });
  }
}
