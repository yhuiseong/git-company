import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("asd"),
        ),
        body: Container(
          
        ),
        bottomNavigationBar: BottomAppBar(),
      )
    );
  }
}

class TopBarContainer extends StatelessWidget {
  const TopBarContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
