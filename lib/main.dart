import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tic_tac_toe/board_screen.dart';

void main() {
  runApp(MyApplication());
}



class MyApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Board_screen.ROUTE_NAME,
      routes: {
        Board_screen.ROUTE_NAME: (_) => Board_screen()
      } ,
    );
  }

}