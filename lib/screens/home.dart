import 'package:flutter/material.dart';

import '../magazine.dart';
import '../magazine_dm.dart';
import '../main.dart';
import '../page_title.dart';

class Home extends StatelessWidget {
  List<MagazineDM> filterdList = [];
  @override
  Widget build(BuildContext context) {
    filterdList = magazines;
    return Scaffold(
      appBar: AppBar(
        title: const Text("App title", style: TextStyle(fontSize: 30)),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              PageTitle("Magazine"),
              PageTitle("News"),
            ],
          ),
          Expanded(
            child: ListView.builder(
                itemCount: filterdList.length,
                itemBuilder: (context, index) => Magazine(magazineDM: filterdList[index])
            ),
          )
        ],
      ),
    );
  }


}
