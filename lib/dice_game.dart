import 'dart:io';
import 'dart:math';

void main() {
  print('Type \'exit\' to end the game.');
  diceGame();
}

diceGame() {
  int computerScore = 0;
  int playerScore = 0;
  while (true) {
    stdout.write('Welcome to dice game type \'roll\' to roll both dices.\n');
    String gameStart = stdin.readLineSync()!;

    if (gameStart.toLowerCase() == 'exit') {
      print('Computers\' Score: $computerScore \n Your Score: $playerScore');
      if(computerScore > playerScore) {
        print('Computer Wins!');
      }else if(computerScore < playerScore){
        print('You Win!');
      }else{
        print('It\'s a tie!');
      }
      break;
    }
    int computerDiceOne = Random().nextInt(6) + 1;
    int computerDiceTwo = Random().nextInt(6) + 1;
    int playerDiceOne = Random().nextInt(6) + 1;
    int playerDiceTwo = Random().nextInt(6) + 1;

    if (computerDiceOne + computerDiceTwo > playerDiceOne + playerDiceTwo) {
      computerScore++;
    } else if (computerDiceOne + computerDiceTwo <
        playerDiceOne + playerDiceTwo) {
      playerScore++;
    } else {
      computerScore += 0;
      playerScore += 0;
    }
    if (gameStart.toLowerCase() == 'roll') {
      print(
          'Computer: $computerDiceOne, $computerDiceTwo \n You: $playerDiceOne, $playerDiceTwo');
      continue;
    }
  }
}
