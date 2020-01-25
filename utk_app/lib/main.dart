import 'package:flutter/material.dart';
import 'dart:math';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      theme: ThemeData(),
      darkTheme: ThemeData.dark(),
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Center(
            child: Text(
              'I ♡ ROG',
              style: TextStyle(
                  color: Colors
                      .primaries[Random().nextInt(Colors.primaries.length)],
                  fontSize: 15.0,
                  fontFamily: 'Inconsolata-Regular',
                  fontStyle: FontStyle.italic),
            ),
          ),
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              children: <Widget>[
                CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage('images/img4.jpg'),
                ),
                Text(
                  'Utkarsh Nagpure',
                  style: TextStyle(
                    fontFamily: 'Parisienne',
                    color: Colors
                        .primaries[Random().nextInt(Colors.primaries.length)],
                    fontSize: 40.0,
                  ),
                ),
                Text(
                  '<!DEVELOPER>',
                  style: TextStyle(
                      fontFamily: 'Inconsolata',
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w100),
                ),
                SizedBox(
                  height: 50.0,
                  width: 150.0,
                  child: Divider(
                    color: Colors.grey[900],
                  ),
                ),
                Card(
                  color: Colors.black,
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    onTap: _launchURL4,
                    leading: Icon(
                      FontAwesomeIcons.github,
                      color: Colors.white,
                    ),
                    title: Text(
                      'Utkarsh2604',
                      style: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontSize: 15.0,
                        color: Colors.white,
                        fontFamily: 'Inconsolata',
                      ),
                    ),
                  ),
                ),
                Card(
                  color: Colors.black,
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    onTap: _launchURL3,
                    leading: Icon(
                      Icons.email,
                      color: Colors.white,
                    ),
                    title: Text(
                      'nagpureutkarsh@gmail.com',
                      style: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontSize: 15.0,
                        color: Colors.white,
                        fontFamily: 'Inconsolata',
                      ),
                    ),
                  ),
                ),
                Card(
                  color: Colors.black,
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    onTap: _launchURL2,
                    leading: Icon(
                      FontAwesomeIcons.twitter,
                      color: Colors.white,
                    ),
                    title: Text(
                      '@utkarsh_nagpure',
                      style: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontSize: 15.0,
                        color: Colors.white,
                        fontFamily: 'Inconsolata',
                      ),
                    ),
                  ),
                ),
                Card(
                  color: Colors.black,
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    onTap: _launchURL1,
                    leading: Icon(
                      FontAwesomeIcons.linkedin,
                    ),
                    title: Text(
                      'Utkarsh Nagpure',
                      style: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontSize: 15.0,
                        color: Colors.white,
                        fontFamily: 'Inconsolata',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

_launchURL4() async {
  const url = 'https://github.com/Utkarsh2604';
  if (await canLaunch(url)) {
    await launch(url);
  }
}

_launchURL3() async {
  const url = 'mailto:<nagpureutkarsh@gmail.com>';
  if (await canLaunch(url)) {
    await launch(url);
  }
}

_launchURL2() async {
  const url = 'https://twitter.com/utkarsh_nagpure';
  if (await canLaunch(url)) {
    await launch(url);
  }
}

_launchURL1() async {
  const url = 'https://www.linkedin.com/in/utkarshngp';
  if (await canLaunch(url)) {
    await launch(url);
  }
}
