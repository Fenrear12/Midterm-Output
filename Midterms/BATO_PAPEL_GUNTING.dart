import 'dart:io';
import 'dart:math';

enum Action { bato, papel, gunting }
var playerChoice;
void main() {
  final gen = Random();

  {
    print("Choose your action: Bato, Papel, Gunting");
    final choice = stdin.readLineSync();

    if (choice == 'Bato' || choice == 'bato' || choice == 'BATO') {
      playerChoice = Action.bato;
      print('You played: ⚫');
    }
    if (choice == 'Papel' || choice == 'papel' || choice == 'PAPEL') {
      playerChoice = Action.papel;
      print('You played: 📰');
    }
    if (choice == 'Gunting' || choice == 'gunting' || choice == 'GUNTING') {
      playerChoice = Action.gunting;
      print('You played: ✂');
    }

    final random = gen.nextInt(3);
    final aichoice = Action.values[random];

    if (aichoice == Action.bato) {
      print("AI played: ⚫");
    }
    if (aichoice == Action.papel) {
      print("AI played: 📰");
    }
    if (aichoice == Action.gunting) {
      print("AI played: ✂");
    }

    if (playerChoice == aichoice) {
      print("It's a draw!!!");
    } else if (playerChoice == Action.bato && aichoice == Action.gunting) {
      print("You win!!!");
    } else if (playerChoice == Action.gunting && aichoice == Action.papel) {
      print("You win!!!");
    } else if (playerChoice == Action.papel && aichoice == Action.bato) {
      print("You win!!!");
    } else {
      print("You lose!!!");
    }
  }
}
