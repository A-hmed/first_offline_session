import 'package:flutter/material.dart';

class XoButton extends StatelessWidget {
  String symbol;
  Function onClick;
  int index;


  XoButton(this.symbol,this.onClick, this.index);
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
          color: Colors.red,
            margin: const EdgeInsets.all(4),
            child: ElevatedButton(
                onPressed: () {
                  onClick(index);
                }, child: Text("$symbol"
            ,style: const TextStyle(fontSize: 24,
                  fontWeight: FontWeight.bold),)
            )
        )
    );
  }
}
