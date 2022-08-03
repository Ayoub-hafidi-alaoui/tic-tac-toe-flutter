import 'package:flutter/cupertino.dart';

class BoardHeader extends StatelessWidget {
  int player1Score;
  int player2Score;

  BoardHeader(this.player1Score, this.player2Score);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [Text("Player 1 (X)", style: TextStyle(fontSize: 30),),
            Text("Player 2 (O)", style: TextStyle(fontSize: 30))],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [Text("Score: $player1Score", style: TextStyle(fontSize: 30)),
            Text("Score: $player2Score", style: TextStyle(fontSize: 30))],
        )
      ],
    );
  }

}