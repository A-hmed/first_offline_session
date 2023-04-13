import 'package:flutter/material.dart';

class Register extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Register"),),
      body: ElevatedButton(
        child: Text("Go back to login"),
        onPressed: (){
          Navigator.pop(context);
        },
      ),

    );
  }
}
