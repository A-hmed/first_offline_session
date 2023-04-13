import 'package:first_online_project/screens/splash/splash.dart';
import 'package:first_online_project/screens/xo/xo_button.dart';
import 'package:flutter/material.dart';

class GameBoard extends StatefulWidget {
  static String routeName = "gameboard";

  @override
  State<GameBoard> createState() => _GameBoardState();
}

class _GameBoardState extends State<GameBoard> {
  List<String> board = [
    "", "", "",
    "", "", "",
    "", "", ""
  ];
  int counter = 0;

  TextStyle playerNamesStyle = const TextStyle(fontSize: 24, fontWeight: FontWeight.bold);
  int player1Score = 0;
  int player2Score = 0;

  @override
  Widget build(BuildContext context) {
    GameBoardArgs args = ModalRoute.of(context)!.settings.arguments as GameBoardArgs;
    return Scaffold(
      appBar: AppBar(
        title: Text("Game board"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("${args.player1}: $player1Score", style: playerNamesStyle,),
                Text("${args.player2}: $player2Score",  style: playerNamesStyle),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                XoButton(board[0], onButtonClick, 0),
                XoButton(board[1], onButtonClick, 1),
                XoButton(board[2], onButtonClick, 2),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                XoButton(board[3], onButtonClick, 3),
                XoButton(board[4], onButtonClick, 4),
                XoButton(board[5], onButtonClick, 5) ,
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                XoButton(board[6], onButtonClick, 6),
                XoButton(board[7], onButtonClick, 7),
                XoButton(board[8], onButtonClick, 8),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void onButtonClick(int index){
    if(board[index].isNotEmpty) return;
    String symbol = counter % 2 == 0 ? "o": "x";
    board[index] = symbol;

    if(checkWinner(symbol)){
      if(symbol == "o"){
        player1Score++;
      }else {
        player2Score++;
      }
      resetBoard();
      return;
    }

    if(counter == 8){
      resetBoard();
    }

    setState(() {});
    counter++;
  }

  void resetBoard(){
    board = [
      "", "", "",
      "", "", "",
      "", "", ""
    ];
    counter = 0;
    setState(() {});
  }
  bool checkWinner(String symbol) {
    if(board[0] == symbol && board[4] == symbol && board[8]== symbol){
      return true;
    }
    if(board[2] == symbol && board[4] == symbol && board[6]== symbol){
      return true;
    }

    for(int i = 0; i < 9  ; i += 3){
      if(board[i] == symbol && board[i + 1] == symbol && board[i + 2]== symbol){
        return true;
      }
    }
    for(int i = 0; i < 3; i++){
      if(board[i] == symbol && board[i + 3] == symbol && board[i + 6]== symbol){
        return true;
      }
    }
    return false;
  }

}
