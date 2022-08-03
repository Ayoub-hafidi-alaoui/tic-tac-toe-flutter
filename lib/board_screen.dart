import 'package:flutter/material.dart';
import 'package:tic_tac_toe/board_header.dart';

import 'board_button.dart';

class Board_screen extends StatefulWidget {
  static const String ROUTE_NAME = "board";

  @override
  State<Board_screen> createState() => _Board_screenState();
}

class _Board_screenState extends State<Board_screen> {
  List<String> boardStatus = ['', '', '', '', '', '', '', '', ''];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Game"),
      ),
      body: Scaffold(
        body: Column(
          children: [
            Expanded(child: BoardHeader(player1Score, player2Score)),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  BoardButton(boardStatus[0], onBtnClick, 0),
                  BoardButton(boardStatus[1], onBtnClick, 1),
                  BoardButton(boardStatus[2], onBtnClick, 2)
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  BoardButton(boardStatus[3], onBtnClick, 3),
                  BoardButton(boardStatus[4], onBtnClick, 4),
                  BoardButton(boardStatus[5], onBtnClick, 5)
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  BoardButton(boardStatus[6], onBtnClick, 6),
                  BoardButton(boardStatus[7], onBtnClick, 7),
                  BoardButton(boardStatus[8], onBtnClick, 8)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  int counter = 0;
  int player1Score = 0;
  int player2Score = 0;

  void onBtnClick(int index) {
    print("hello");
    if (boardStatus[index].isNotEmpty) {
      return;
    }
    //x turn
    if (counter % 2 == 0) {
      boardStatus[index] = 'X';
      player1Score++;
    }
    //O turn
    else {
      boardStatus[index] = 'O';
      player2Score += 1;
    }
    counter++;
    setState(() {});
    if (checkWinner('X')) {
      player1Score + 5;
      resetBoard();
    } else if (checkWinner('O')) {
      player2Score + 5;
      resetBoard();
    } else if (counter == 9) {
      resetBoard();
    }
  }

  bool checkWinner(String playerSymbol) {
    for (int i = 0; i < 9; i + 3) {
      if (boardStatus[i] == playerSymbol &&
          boardStatus[i + 1] == playerSymbol &&
          boardStatus[i + 2] == playerSymbol) {
        return true;
      }
    }
    for (int i = 0; i < 3; i++) {
      if (boardStatus[i] == playerSymbol &&
          boardStatus[i + 3] == playerSymbol &&
          boardStatus[i + 6] == playerSymbol) {
        return true;
      }
    }
    if (boardStatus[0] == playerSymbol &&
        boardStatus[4] == playerSymbol &&
        boardStatus[8] == playerSymbol) {
      return true;
    }
    if (boardStatus[2] == playerSymbol &&
        boardStatus[4] == playerSymbol &&
        boardStatus[6] == playerSymbol) {
      return true;
    } else {
      return false;
    }
  }

  void resetBoard() {
    boardStatus = ['', '', '', '', '', '', '', '', ''];
    counter = 0;
    setState(() {});
  }
}
