import 'dart:async';
import 'package:flutter/material.dart';
import 'storybrain.dart';

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

StoryBrain storyBrain = StoryBrain();

class PokeGame extends StatefulWidget {
  @override
  _PokeGameState createState() => _PokeGameState();
}

class _PokeGameState extends State<PokeGame> {
  @override
  Widget build(BuildContext context) {
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
        padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 12,
                child: Center(
                  child: Text(
                    storyBrain.getStory(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25.0,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: OutlineButton(
                  onPressed: () {
                    setState(() {
                      storyBrain.nextStory();
                    });
                  },
                  borderSide: BorderSide(width: 2.0, color: Colors.blue[900]),
                  //color: Colors.red,
                  child: Text(
                    storyBrain.getChoice1(),
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 7.0,
              ),
              Expanded(
                flex: 2,
                child: Visibility(
                  visible: true,
                  child: OutlineButton(
                    borderSide: BorderSide(width: 2.0, color: Colors.blue[800]),
                    onPressed: () {
                      setState(() {
                        storyBrain.nextStory();
                      });
                      //Choice 2 made by user.
                    },
                    //color: Colors.blue,
                    child: Text(
                      storyBrain.getChoice2(),
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 7.0,
              ),
              Expanded(
                flex: 2,
                child: Visibility(
                  visible: storyBrain.buttonShouldBeVisible(3),
                  child: OutlineButton(
                    borderSide: BorderSide(width: 2.0, color: Colors.blue[700]),
                    onPressed: () {
                      setState(() {
                        storyBrain.nextStory();
                      });
                      //Choice 2 made by user.
                    },
                    //color: Colors.blue,
                    child: Text(
                      storyBrain.getChoice3(),
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 7.0,
              ),
              Expanded(
                flex: 2,
                child: Visibility(
                  visible: storyBrain.buttonShouldBeVisible(4),
                  child: OutlineButton(
                    borderSide: BorderSide(width: 2.0, color: Colors.blue[600]),
                    onPressed: () {
                      setState(() {
                        storyBrain.nextStory();
                      });
                      //Choice 2 made by user.
                    },
                    //color: Colors.blue,
                    child: Text(
                      storyBrain.getChoice4(),
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 7.0,
              ),
              Expanded(
                flex: 2,
                child: Visibility(
                  visible: storyBrain.buttonShouldBeVisible(5),
                  child: OutlineButton(
                    borderSide: BorderSide(width: 2.0, color: Colors.blue[500]),
                    onPressed: () {
                      setState(() {
                        storyBrain.nextStory();
                      });
                      //Choice 2 made by user.
                    },
                    //color: Colors.blue,
                    child: Text(
                      storyBrain.getChoice5(),
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 7.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
