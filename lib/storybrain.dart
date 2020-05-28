import 'package:flutter/cupertino.dart';

import 'story.dart';
import 'nature.dart';
import 'package:flutter/material.dart';
import 'package:giffy_dialog/giffy_dialog.dart';

class StoryBrain {
  int _storynumber = 0;
  Nature _nature = Nature();
  List<Story> _storyData = [
    Story(
      storyTitle: 'Are you often late for school or meetings?',
      choice1: 'Yes', // Relaxed , Sassy
      choice2: 'No', // Hardy , Hasty
      choice3: '',
      choice4: '',
      choice5: '',
    ),
    Story(
      storyTitle: 'Are you a cheerful personality?',
      choice1: 'Yes', //Jolly , Naive
      choice2: 'No', // Quirky , Sassy
      choice3: '',
      choice4: '',
      choice5: '',
    ),
    Story(
      storyTitle: 'Can you sincerely thank someone when you feel grateful?',
      choice1: 'Yes', //Calm , Docile
      choice2: 'No', // Quirky , Sassy
      choice3: '',
      choice4: '',
      choice5: '',
    ),
    Story(
      storyTitle: 'Can you go into a haunted house?',
      choice1: 'No problem!', //Brave
      choice2: 'Uh...N-no...', // Quirky
      choice3: 'With someone I like. ', //Sassy
      choice4: '',
      choice5: '',
    ),
    Story(
      storyTitle:
          'Do you dream of lounging around idly without much excitement?',
      choice1: 'Yes', //Calm
      choice2: 'No', // Impish
      choice3: '',
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
        _nature.increaseNature("Calm");
        _nature.increaseNature("Docile");
      } else {
        _nature.increaseNature("Quirky");
        _nature.increaseNature("Sassy");
      }
    } else if (_storynumber == 3) {
      if (choiceNumber == 1) {
        _nature.increaseNature("Brave");
      } else if (choiceNumber == 2) {
        _nature.increaseNature("Quirky");
      } else
        _nature.increaseNature("Sassy");
    } else if (_storynumber == 4) {
      if (choiceNumber == 1) {
        _nature.increaseNature("Calm");
      } else
        _nature.increaseNature("Impish");
    }
    _storynumber++;
    if (_storynumber == _storyData.length) {
      print("Inside last case");
      int max = 0;
      String index = "";
      _nature.natureMap.forEach((key, value) {
        print("Key : " + key + " value: " + value.toString());
        if (value >= max) {
          max = value;
          index = key;
        }
      });
      print("Max Key : $index" + " Max Value: " + max.toString());
      showAlertDialogWithNature(buildContext, index, "pikachu");
      restart();
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

  void showAlertDialog(BuildContext buildContext) {
    showDialog<void>(
      context: buildContext,
      barrierDismissible: false,
      // false = user must tap button, true = tap outside dialog
      builder: (BuildContext dialogContext) {
        return AssetGiffyDialog(
          cornerRadius: 4,
          image: Image.asset("images/pikachu.png"),
          title: Text(
            'Men Wearing Jackets',
            style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w600),
          ),
          description: Text(
            'Your Nature is Hasty',
            textAlign: TextAlign.center,
          ),
          entryAnimation: EntryAnimation.BOTTOM,
          onOkButtonPressed: () {},
        );
      },
    );
  }

  void showAlertDialogWithNature(
      BuildContext buildContext, String nature, String Pokemon) {
    showDialog<void>(
      context: buildContext,
      barrierDismissible: false,
      // false = user must tap button, true = tap outside dialog
      builder: (BuildContext dialogContext) {
        return AssetGiffyDialog(
          cornerRadius: 4,
          image: Image.asset("images/$Pokemon.png"),
          title: Text(
            '$nature',
            style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w600),
          ),
          description: Text(
            'Your Nature is $nature',
            textAlign: TextAlign.center,
          ),
          entryAnimation: EntryAnimation.BOTTOM,
          onOkButtonPressed: () {},
        );
      },
    );
  }
}
