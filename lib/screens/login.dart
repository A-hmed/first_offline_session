import 'package:flutter/material.dart';
 // class Login extends StatelessWidget {
 //   int counter = 1;
 //   @override
 //   Widget build(BuildContext context) {
 //     return Scaffold(
 //       appBar: AppBar(title: Text("Login"),),
 //       body: Center(
 //         child: Row(
 //           mainAxisAlignment: MainAxisAlignment.center,
 //           children: [
 //             ElevatedButton(onPressed: (){
 //               counter++;
 //               print(counter);
 //             }, child: Text("$counter", style: TextStyle(),)),
 //
 //           ],
 //         ),
 //       ),
 //     );
 //   }
 //
 // }

class Login extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
     return LoginState();
  }
}
class LoginState extends State<StatefulWidget>{

  int counter = 1;

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(title: Text("Login"),),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){
                setState(() {
                  counter++;
                print(counter);
                });
              }, child: Text("$counter", style: TextStyle(),)),

            ],
          ),
        ),
      );
    }

}