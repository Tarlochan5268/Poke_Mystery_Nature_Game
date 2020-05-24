import 'dart:async';
import 'package:flutter/material.dart';

void main() => runApp(Home());

class Home extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      Duration(seconds: 3),
      () => {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PokeGame()),
        ),
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(
        image: new DecorationImage(
          image: new AssetImage(
            "images/splashscreen.jpg",
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class PokeGame extends StatefulWidget {
  @override
  _PokeGameState createState() => _PokeGameState();
}

class _PokeGameState extends State<PokeGame> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Text('Test Message'),
        ),
      ),
    );
  }
}
