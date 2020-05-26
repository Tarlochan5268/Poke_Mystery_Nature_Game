class Nature {
  var natureMap = {
    "Brave": 0,
    "Calm": 0,
    "Docile": 0,
    "Hardy": 0,
    "Hasty": 0,
    "Impish": 0,
    "Jolly": 0,
    "Lonely": 0,
    "Naive": 0,
    "Quirky": 0,
    "Relaxed": 0,
    "Sassy": 0,
    "Timid": 0
  };

  void increaseNature(String nature) {
    if (natureMap.containsKey(nature)) {
      natureMap.update(nature, (value) => value++);
    } else
      print("No Key Found . So now nature incremented");
  }

  void storyNumberNature(int storyNumber, int choiceNumber) {}
}
