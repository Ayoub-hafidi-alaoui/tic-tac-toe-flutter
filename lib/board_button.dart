import 'package:flutter/material.dart';

class BoardButton extends StatelessWidget {
  String text;
  Function onBtnClickCallBack;
  int index;

  BoardButton(this.text, this.onBtnClickCallBack, this.index);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ElevatedButton(
            onPressed: () {
              onBtnClickCallBack(index);
              print(index);
            },
            child: Text(
              "$text",
              style: TextStyle(fontSize: 30),
            )));
  }
}
