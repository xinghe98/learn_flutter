import 'package:flutter/material.dart';
import 'package:myapp/commponts/button.dart';
import 'package:myapp/commponts/text_section.dart';
import 'package:myapp/commponts/titles_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Center(child: Text("hello")),
      ),
      body: ListView(
        children: const [TitleSection(), ButtonColum(), TextSection()],
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "st",
        home: const HomePage(),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.blue));
  }
}
