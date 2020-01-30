import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var diceno = 1;
  var dicenoo = 1;
  void dicechange() {
    setState(() {
      diceno = Random().nextInt(6) + 1;
      dicenoo = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Diceey',
            style: GoogleFonts.pacifico(
              fontSize: 30.0,
            ),
          ),
          backgroundColor: Colors.black,
        ),
        backgroundColor: Colors.black,
        body: Center(
          child: Row(
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    dicechange();
                  },
                  child: Image.asset('images/dice$diceno.png'),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    dicechange();
                  },
                  child: Image.asset('images/dice$dicenoo.png'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
