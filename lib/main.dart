import 'dart:async';
import 'package:flutter/material.dart';
import 'pokegame.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(Home());

class Home extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: SplashScreen(), //splashscreen
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
          MaterialPageRoute(builder: (context) => AboutGame()),
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

class AboutGame extends StatefulWidget {
  @override
  _AboutGameState createState() => _AboutGameState();
}

class _AboutGameState extends State<AboutGame> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {},
      child: Scaffold(
        body: Container(
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new AssetImage(
                "images/background.png",
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SafeArea(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 220.0,
                ),
                Expanded(
                  child: Text(
                    'ABOUT',
                    textAlign: TextAlign.center,
                    maxLines: 1,
                    style: GoogleFonts.passionOne(
                      textStyle: TextStyle(fontSize: 35, color: Colors.white),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    ' This Game is Designed by Tarlochan.\n This Game is simple to play.\n By Just Answer 10 Questions you will your Nature Personality and \n Your pokemon which you should accompany in the Pokemon World \n So You should answer the questions truly.',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.sen(
                      textStyle: TextStyle(
                        fontSize: 15,
                        color: Colors.white70,
                      ),
                    ),
                  ),
                ),
                OutlineButton(
                  borderSide: BorderSide(width: 1.0, color: Colors.blue[900]),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => PokeGame()));
                    setState(() {});
                  },
                  child: Text(
                    'Start Game',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
                SizedBox(
                  height: 70.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
