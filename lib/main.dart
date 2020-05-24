import 'package:flutter/material.dart';

void main() => runApp(Home());

class Home extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: PokeGame(),
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
