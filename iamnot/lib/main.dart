import 'package:flutter/material.dart';

void main() => runApp(Myapp());

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      home: Scaffold(
        backgroundColor: Colors.grey[850],
        appBar: AppBar(
          backgroundColor: Colors.black45,
          title: Center(child: Text('I am Not')),
        ),
        body: Center(
          child: Image.asset('images/diamond.png'),
        ),
      ),
    );
  }
}
