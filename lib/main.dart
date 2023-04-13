
import 'package:first_online_project/screens/calculator/calculator.dart';
import 'package:first_online_project/screens/home.dart';
import 'package:first_online_project/screens/login.dart';
import 'package:first_online_project/screens/register.dart';
import 'package:first_online_project/screens/splash/splash.dart';
import 'package:first_online_project/screens/xo/game_board.dart';
import 'package:flutter/material.dart';

import 'magazine_dm.dart';


List<MagazineDM> magazines = [
  MagazineDM("cars", "assets/car.jpg"),
  MagazineDM("sports", "assets/sport.jpg"),
  MagazineDM("health", "assets/car.jpg"),
];

void main() {
  runApp(MaterialApp(
    routes: {
      "home": (_) => Home(),
      "login": (_) => Login(),
      "register": (_)=> Register(),
      "calculator": (_)=> Calculator(),
       GameBoard.routeName: (_)=> GameBoard(),
      Splash.routeName: (_) => Splash()
    },
    initialRoute:  Splash.routeName,
  ));

}


