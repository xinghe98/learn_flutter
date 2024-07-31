import 'package:flutter/material.dart';

class TestRouter extends StatelessWidget {
  const TestRouter({super.key});

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: const Text("test router"),
        backgroundColor: Colors.cyan,
      ),
      body: Center(
        child: Column(
          children: [
            const Center(
              child: Text("route page"),
            ),
            Center(
              child: Text("${args ?? "null args"}"),
            )
          ],
        ),
      ),
    );
  }
}
