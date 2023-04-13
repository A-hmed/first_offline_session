import 'package:flutter/material.dart';

class PageTitle extends StatelessWidget{
  String title;
  PageTitle(this.title);

  Widget build(BuildContext context){
    return Expanded(
      flex: 1,
      child: Container(
        color: Colors.blue,
        margin: EdgeInsets.all(4),
        padding: EdgeInsets.all(8),
        child: Text(title ,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24, color: Colors.white)),
      ),
    );
  }
}