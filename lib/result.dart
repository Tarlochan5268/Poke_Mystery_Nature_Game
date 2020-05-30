import 'package:flutter/material.dart';

class Result extends StatefulWidget {
  String pokemon;
  String description;
  String nature;
  Result(this.pokemon, this.description, this.nature);
  @override
  _ResultState createState() =>
      _ResultState(this.pokemon, this.description, this.nature);
}

class _ResultState extends State<Result> {
  String pokemon;
  String description;
  String nature;
  _ResultState(this.pokemon, this.description, this.nature);
  @override
  Widget build(BuildContext context) {
    String pokeCaps = pokemon.toUpperCase();
    return Scaffold(
      body: Container(
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage(
              "images/background.png",
            ),
            fit: BoxFit.cover,
          ),
        ),
        //padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
        //constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: OutlineButton(
            onPressed: (){},
            padding: EdgeInsets.fromLTRB(30, 50, 30, 50),
            borderSide: BorderSide(width: 20.0, color: Colors.blue[900]),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 50.0,
                ),
                Text(
                  '$pokeCaps',
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  style: TextStyle(fontSize: 20, color: Colors.white70),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Expanded(
                  flex: 1,
                  child: Image.asset(
                    'images/$pokemon.png',
                    width: 450,
                    height: 250,
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(
                  height: 18.0,
                ),
                Expanded(
                  child: Text(
                    'Your Nature is $nature \n $description $pokemon',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 14),
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
