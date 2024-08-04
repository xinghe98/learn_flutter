import 'package:flutter/material.dart';
import 'package:myapp/views/test_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController unameCo = TextEditingController();
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: const Center(child: Text("hello")),
        ),
        body: Column(
          children: [
            TextField(
              autofocus: true,
              controller: unameCo,
              onChanged: (v) {},
              decoration: const InputDecoration(
                  labelText: "username",
                  hintText: "users",
                  prefixIcon: Icon(Icons.person)),
            ),
            const TextField(
              autofocus: true,
              obscureText: true,
              decoration: InputDecoration(
                  labelText: "passwd",
                  hintText: "password",
                  prefixIcon: Icon(Icons.lock)),
            )
          ],
        )
        // body: ListView(
        //   children: [
        //     const TitleSection(),
        //     const ButtonColum(),
        //     const TextSection(),
        //   ],
        // ),
        );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomePage(),
      initialRoute: "/",
      routes: {
        "/": (context) => const HomePage(),
        "newrouter": (context) => const TestRouter()
      },
      debugShowCheckedModeBanner: false,
      title: "str",
    );
  }
}
