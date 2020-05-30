class Nature {
  var natureMap = {
    "Brave": 0,
    "Docile": 0,
    "Hasty": 0,
    "Lonely": 0,
    "Naive": 0,
    "Quirky": 0,
    "Relaxed": 0,
    "Sassy": 0,
    "Calm": 0,
    "Jolly": 0,
    "Hardy": 0,
    "Impish": 0,
    "Timid": 0
  };

  var naturePoke = {
    "Brave": [
      "lucario",
      "You have a strong sense of justice. You hate evil. You will take on any opponent. You are truly a hero! Go forth! For justice… For peace on earth… Fight the forces of evil! If I’m wrong, work at becoming a true hero! A brave person like you should be"
    ],
    "Calm": [
      "jirachi",
      "You’re capable of giving advice to friends with worries. You don’t like to fight. You’re a warm kindhearted person who cares. You must have many friends who look up to you. However… you may also be somewhat gullible as well as a little careless and even a little meddlesome. You might want to keep those points in mind. A calm person like you should be"
    ],
    "Docile": [
      "blissey",
      "You’re very kindhearted. Very helpful. You can make friends with anyone. You’re a very wonderful person... Is that going overboard? I don’t think so. You yourself should be the best judge of that. A docile person like you should be"
    ],
    "Hardy": [
      "charizard",
      "You do your homework diligently, and you know how to eat properly. You have strong willpower that lets you complete tasks, however tough. But you can also be stubborn to the point of even feuding with friends. Nothing will go right for you when you’re irritated, so learn to laugh it off. A hardy person like you should be"
    ],
    "Hasty": [
      "suicune",
      "You like to take charge and get things done. You’re a real go-getter. But are you also stressed out? You get irritated when your friends don’t show up on time. You get frustrated when things don’t turn out the way you expect. Maybe you jab the elevator button if the elevator is slow to arrive. Maybe you’re already jabbing the jaws repeatedly now with impatience. Beware - getting too easily irritated may waste your energy. A hasty person like you should be"
    ],
    "Impish": [
      "pikachu",
      "You’re playful, cheerful, and you love pranks. You’re also kindhearted. That’s why the people around you find you so irresistible. You must be the most popular person around! Oh? You’re not that popular? You’re either being modest... or you just don’t notice it. I bet people are just too shy to let their feelings be known. There’s someone out there who’s afraid to declare their love for you! An impish person like you should be"
    ],
    "Jolly": [
      "dragonite",
      "Always laughing and smiling, you uplift everyone around you. You love jokes! You have lots of friends, and you’re popular wherever you go. But sometimes you get carried away and say things that get you in trouble. You should learn to think before saying or doing anything. A jolly person like you should be"
    ],
    "Lonely": [
      "cubone",
      "You always act cheerful and jocular around other people. But that’s only because you are with other people. However, when you’re alone… Do you find yourself feeling oddly depressed? That’s why you always want to be with others. It’s not good to go around feeling depressed too much. Why don’t you call up a friend instead? Just remember, it’s not a bad thing to be lonely. You know what it’s like when you aren’t alone, so that’s why you feel lonesome. And that’s why you aren’t really alone. A lonely person like you should be"
    ],
    "Naive": [
      "mew",
      "You are highly curious and you love rare things. You have a cheerful and carefree attitude which should make thins fun for the people around you. But you have one flaw. You can be childish. You can never sit still. You’re always on the move. You can also be selfish, so you should watch yourself. A Naive person like you should be"
    ],
    "Quirky": [
      "blastoise",
      "People consider you an eccentric, doing things at your own pace. You never break tempo. Your carefree nature makes you attractive. But you also happen to be somewhat childish. You are fickle and cause problems for the people who have to go along with you. Maybe people are even upset with you for being so fickle? If you realize how selfishly you’re behaving, try to think before you done anything rash. A quirky person like you should be"
    ],
    "Relaxed": [
      "snorlax",
      "Do you occasionally zone out and miss a bus? Or do you find yourself dozing off? Or is your reaction time a little slower than others? But that’s not necessarily a bad thing. You can do things at your own tempo without feeling pressured. You can live in a relaxed and unhurried manner without worries. I think that’s a happy lifestyle to be envied, even. You’re also surprisingly popular. The way you vacantly stare off into the distance… It should make that some special’s pulse race. A relaxed person like you should be"
    ],
    "Sassy": [
      "scizor",
      "You tend to be somewhat cynical. Despite that, there is something appealing and lovable about you. But do you occasionally say something arrogant that angers others? Do you make that mistake or have people called you conceited, vain, or selfish? Have people said that about you? Huh? You’re telling me to get lost? Why, you… Come here and say that! *gasp* I’m sorry. I let my feelings fun away. I truly regret this, really. Anyway, your cool and aloof attitude is what defines you. It makes you exasperating and appealing at the same time. A sassy person like you should be"
    ],
    "Timid": [
      "meowth",
      "You may find it hard to go to the washroom at night. You may also find it too frightening to go back to school to get something you left behind in class. If you’re ever walking on a dark street at night you probably turn around often to check behind you. But your timid nature is also your good point! Because those who know fear are those who know true courage. A timid person like you should be"
    ]
  };

  void increaseNature(String nature) {
    if (natureMap.containsKey(nature)) {
      natureMap[nature]++;
      natureMap.update(nature, (value) => value++);
    } else
      print("No Key Found . So now nature incremented");
  }

  String getNaturePokeName(String nature) {
    return naturePoke[nature][0];
  }

  String getNatureDescription(String nature) {
    return naturePoke[nature][1];
  }

  void resetValuesOfNature() {
    natureMap.forEach((key, value) {
      value = 0;
    });
    print("reset values of all nature to 0");
  }
}
