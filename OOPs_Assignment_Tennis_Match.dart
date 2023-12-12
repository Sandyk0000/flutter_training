
//Created player class with given attributes.
class Player{
  String name;
  int score;
  int skill;
  
  //initializing the variables using constructor
  Player(this.name, this.score, this.skill);
}


//create abstract class tournament
abstract class Tournament{
  void play();
  void displayScores();
}


class MatchOne extends Tournament{
  late Player playerOne;
  late Player playerTwo;
  
  MatchOne(this.playerOne, this.playerTwo);
  
  @override
  void play(){
    playerOne.score += playerOne.skill;
    playerTwo.score += playerTwo.skill;
  }
  
  @override
  void displayScores(){
    print('Player One Score is: ${playerOne.score}');
    print('Player two Score is: ${playerTwo.score}');
  }
  
}

void main() {
  
  Player player1 = Player("RAM", 10, 52);
  Player player2 = Player("SHYAM", 10, 65);
  
  MatchOne match1 = MatchOne(player1, player2);
  
  match1.play();
  match1.displayScores();
  
  print(" ");
  
  Player player3 = Player("SITA", 0, 75);
  Player player4 = Player("GITA", 0, 68);
  
  MatchOne match2 = MatchOne(player3, player4);
  
  match2.play();
  match2.displayScores();
}
