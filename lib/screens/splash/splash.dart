import 'package:first_online_project/screens/xo/game_board.dart';
import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  static String routeName = "splash";
  String player1Name = "";
  String player2Name = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Splash"),),
      body: Column(
        children: [
          TextField(
            decoration: const InputDecoration(
              labelText: "Player1"
            ),
            onChanged: (text){
              player1Name = text;
            },
          ),
          TextField(
            decoration: const InputDecoration(
                hintText: "Player2"
            ),
            onChanged: (text){
              player2Name = text;
            },
          ),
          Spacer(),
          ElevatedButton(onPressed: (){

            Navigator.pushNamed(context,
                GameBoard.routeName,
                arguments: GameBoardArgs(player1Name, player2Name),
            );
          }, child: Text("Start"))
        ],
      ),
    );
  }
}
class GameBoardArgs{
  String player1;
  String player2;

  GameBoardArgs(this.player1, this.player2);
}

