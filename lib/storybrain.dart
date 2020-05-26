import 'story.dart';
import 'nature.dart';

class StoryBrain {
  int _storynumber = 0;
  Nature _nature = Nature();
  List<Story> _storyData = [
    Story(
      storyTitle: 'Are you often late for school or meetings?',
      choice1: 'Yes',
      choice2: 'No',
      choice3: '',
      choice4: '',
      choice5: '',
    ),
    Story(
      storyTitle: 'Are you a cheerful personality?',
      choice1: 'Yes',
      choice2: 'No',
      choice3: '',
      choice4: '',
      choice5: '',
    ),
    Story(
      storyTitle: 'Can you sincerely thank someone when you feel grateful?',
      choice1: 'Yes',
      choice2: 'No',
      choice3: '',
      choice4: '',
      choice5: '',
    ),
    Story(
      storyTitle: 'Can you go into a haunted house?',
      choice1: 'No problem!',
      choice2: 'Uh...N-no...',
      choice3: 'With someone I like. ',
      choice4: '',
      choice5: '',
    ),
  ];

  void nextStory() {
    _storynumber == _storyData.length - 1 ? _storynumber = 0 : _storynumber++;
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

  int get storynumber => _storynumber;

  void goForCalculate(int choiceNumber) {
    if(_storynumber == 0)
      {
        if(choiceNumber == 1)
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
}
