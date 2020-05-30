import 'package:flutter/cupertino.dart';
import 'package:pokemysterynaturegame/result.dart';
import 'result.dart';

import 'story.dart';
import 'nature.dart';
import 'package:flutter/material.dart';

// Question are taken from https://www.ign.com/wikis/pokemon-mystery-dungeon-rescue-team-dx/Every_Interview_Question_and_Answer_in_Pokemon_Mystery_Dungeon_Rescue_Team_DX
class StoryBrain {
  int _storynumber = 0;
  Nature _nature = Nature();
  List<Story> _storyData = [
    Story(
      //yes 0
      storyTitle: 'Are you often late for school or meetings?',
      choice1: 'Yes', // Relaxed , Sassy
      choice2: 'No', // Hardy , Hasty
      choice3: '',
      choice4: '',
      choice5: '',
    ),
    Story(
      //yes 1
      storyTitle: 'Are you a cheerful personality?',
      choice1: 'Yes', //Jolly , Naive
      choice2: 'No', // Quirky , Sassy
      choice3: '',
      choice4: '',
      choice5: '',
    ),
    Story(
      //yes 2
      storyTitle: 'You broke a rotten egg in your room! What will you do?',
      choice1: 'Open a window right away.', //Docile,Hasty
      choice2: 'Take a sniff first', //Naive,Relaxed
      choice3: '',
      choice4: '',
      choice5: '',
    ),
    Story(
      //yes 3
      storyTitle: 'You win a lottery! What do you do with the money?',
      choice1: 'Spend it now', //Hasty,Jolly
      choice2: 'Save it', //Hardy,Quirky
      choice3: 'Give it away', //Naive,Brave
      choice4: '',
      choice5: '',
    ),
    Story(
      //yes 4
      storyTitle:
          'You going bungee jump for the first time you decide to test jump with a doll but cord snaps! Will you still jump anyway?',
      choice1: 'Yes', //Brave,Impish
      choice2: 'No', //Timid,Docile
      choice3: 'Maybe', //Calm
      choice4: '',
      choice5: '',
    ),
    Story(
      //yes 5
      storyTitle:
          'It’s a weekend, but no one will play with you. What do you do?',
      choice1: 'Go on a trip', //Jolly, Lonely
      choice2: 'Hang around vacantly', //Calm, Relaxed
      choice3: 'Huddle in a corner', //Lonely, Timid
      choice4: '',
      choice5: '',
    ),
    Story(
      //yes 6
      storyTitle:
          'Grab any digit on your left hand with your right hand. Which digit did you grab?',
      choice1: 'Thumb', //Calm
      choice2: 'Index finger', //Docile
      choice3: 'Middle finger', //Impish
      choice4: 'Ring finger', //Jolly
      choice5: 'Little finger', //Lonely
    ),
    Story(
      //yes 7
      storyTitle:
          'There is a person you like, but there’s no opportunity to get close. What do you do?',
      choice1: 'Bravely declare my love', //Brave, Hardy
      choice2: 'Might say hello…', //Quirky
      choice3: 'Pull a prank to get attention', //Impish
      choice4: 'Look from afar', //Timid
      choice5: '',
    ),
    Story(
      //yes 8
      storyTitle:
          'Someone calls you “weird but funny.” How does that make you feel?',
      choice1: 'Happy!', //Lonely, Naive
      choice2: 'Not happy', //Hasty, Sassy
      choice3: 'I Dont Care What Others Say', //Calm
      choice4: '',
      choice5: '',
    ),
    Story(
      //yes 9
      storyTitle: 'A test is coming up. How do you study for it?',
      choice1: 'Study hard', //Hardy
      choice2: 'At the last second', //Timid,Relaxed
      choice3: 'Ignore it and play', //Impish
      choice4: '',
      choice5: '',
    ),
  ];

  void nextStory() {
    _storynumber == _storyData.length - 1 ? _storynumber = 0 : _storynumber++;
  }

  void nextStorywithChoice(int choice, BuildContext buildContext) {
    print("Inside Next Story with nature");

    goForCalculate(choice, buildContext);
  }

  String getStory() {
    return _storyData[_storynumber].storyTitle;
  }

  String getChoice1() {
    return _storyData[_storynumber].choice1;
  }

  String getChoice2() {
    return _storyData[_storynumber].choice2;
  }

  String getChoice3() {
    return _storyData[_storynumber].choice3;
  }

  String getChoice4() {
    return _storyData[_storynumber].choice4;
  }

  String getChoice5() {
    return _storyData[_storynumber].choice5;
  }

  void restart() {
    _storynumber = 0;
  }

  void restartToNeg1() {
    _storynumber = -1;
  }

  int get storynumber => _storynumber;

  void goForCalculate(int choiceNumber, BuildContext buildContext) {
    print("Inside go for calculate: " +
        _storynumber.toString() +
        " choice made: " +
        choiceNumber.toString());
    if (_storynumber == 0) {
      if (choiceNumber == 1) {
        _nature.increaseNature("Relaxed");
        _nature.increaseNature("Sassy");
      } else {
        _nature.increaseNature("Hardy");
        _nature.increaseNature("Hasty");
      }
    } else if (_storynumber == 1) {
      if (choiceNumber == 1) {
        _nature.increaseNature("Jolly");
        _nature.increaseNature("Naive");
      } else {
        _nature.increaseNature("Quirky");
        _nature.increaseNature("Sassy");
      }
    } else if (_storynumber == 2) {
      if (choiceNumber == 1) {
        _nature.increaseNature("Hasty");
        _nature.increaseNature("Docile");
      } else {
        _nature.increaseNature("Naive");
        _nature.increaseNature("Relaxed");
      }
    } else if (_storynumber == 3) {
      if (choiceNumber == 1) {
        _nature.increaseNature("Hasty");
        _nature.increaseNature("Jolly");
      } else if (choiceNumber == 2) {
        _nature.increaseNature("Quirky");
        _nature.increaseNature("Hardy");
      } else {
        _nature.increaseNature("Naive");
        _nature.increaseNature("Brave");
      }
    } else if (_storynumber == 4) {
      if (choiceNumber == 1) {
        _nature.increaseNature("Brave");
        _nature.increaseNature("Impish");
      } else if (choiceNumber == 2) {
        _nature.increaseNature("Timid");
        _nature.increaseNature("Docile");
      } else {
        _nature.increaseNature("Calm");
        _nature.increaseNature("Impish");
      }
    } else if (_storynumber == 5) {
      if (choiceNumber == 1) {
        _nature.increaseNature("Jolly");
        _nature.increaseNature("Lonely");
      } else if (choiceNumber == 2) {
        _nature.increaseNature("Calm");
        _nature.increaseNature("Relaxed");
      } else {
        _nature.increaseNature("Lonely");
        _nature.increaseNature("Timid");
      }
    } else if (_storynumber == 6) {
      if (choiceNumber == 1) {
        _nature.increaseNature("Calm");
      } else if (choiceNumber == 2) {
        _nature.increaseNature("Docile");
      } else if (choiceNumber == 3) {
        _nature.increaseNature("Impish");
      } else if (choiceNumber == 4) {
        _nature.increaseNature("Jolly");
      } else {
        _nature.increaseNature("Lonely");
      }
    } else if (_storynumber == 7) {
      if (choiceNumber == 1) {
        _nature.increaseNature("Brave");
        _nature.increaseNature("Hardy");
      } else if (choiceNumber == 2) {
        _nature.increaseNature("Quirky");
      } else if (choiceNumber == 3) {
        _nature.increaseNature("Impish");
      } else {
        _nature.increaseNature("Timid");
      }
    } else if (_storynumber == 8) {
      if (choiceNumber == 1) {
        _nature.increaseNature("Naive");
        _nature.increaseNature("Lonely");
      } else if (choiceNumber == 2) {
        _nature.increaseNature("Hasty");
        _nature.increaseNature("Sassy");
      } else {
        _nature.increaseNature("Calm");
      }
    } else if (_storynumber == 9) {
      if (choiceNumber == 1) {
        _nature.increaseNature("Hardy");
      } else if (choiceNumber == 2) {
        _nature.increaseNature("Timid");
        _nature.increaseNature("Relaxed");
      } else {
        _nature.increaseNature("Impish");
      }
    }
    _storynumber++;
    if (_storynumber == _storyData.length) {
      print("Inside last case");
      int max = 0;
      String naturee = "";
      _nature.natureMap.forEach((key, value) {
        print("Key : " + key + " value: " + value.toString());
        if (value >= max) {
          max = value;
          naturee = key;
        }
      });
      print("Max Key : $naturee" + " Max Value: " + max.toString());
      print("Pokemon : " +
          _nature.naturePoke[naturee][0] +
          " Description: " +
          _nature.naturePoke[naturee][1]);
      //showAlertDialogWithNature(buildContext, naturee,_nature.naturePoke[naturee][0], _nature.naturePoke[naturee][1]);
      restart();
      _nature.resetValuesOfNature();
      Navigator.of(buildContext).push(MaterialPageRoute(
          builder: (context) => Result(_nature.naturePoke[naturee][0],
              _nature.naturePoke[naturee][1], naturee)));
      /*Navigator.of(buildContext).push(MaterialPageRoute(
          builder: (context) => Result(_nature.naturePoke["Sassy"][0],
              _nature.naturePoke["Sassy"][1], naturee)));*/
    }
  }

  bool buttonShouldBeVisible(int choice) {
    if (choice == 3) {
      return (_storyData[_storynumber].choice3.isEmpty) ? false : true;
    } else if (choice == 4) {
      return (_storyData[_storynumber].choice4.isEmpty) ? false : true;
    } else if (choice == 5) {
      return (_storyData[_storynumber].choice5.isEmpty) ? false : true;
    } else
      return false;
  }
/*
  void showAlertDialogWithNature(BuildContext buildContext, String nature,
      String pokemon, String description) {
    showDialog<void>(
      context: buildContext,
      barrierDismissible: false,
      // false = user must tap button, true = tap outside dialog
      builder: (BuildContext dialogContext) {
        return AssetGiffyDialog(
          cornerRadius: 4,
          image: Image.asset("images/$pokemon.png"),
          title: Text(
            '$nature',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600),
          ),
          description: Text(
            '$description $pokemon',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14),
          ),
          entryAnimation: EntryAnimation.BOTTOM,
          onOkButtonPressed: () {},
        );
      },
    );
  }

 */
}
