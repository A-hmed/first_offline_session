import 'package:flutter/material.dart';

import 'magazine_dm.dart';

class Magazine extends StatelessWidget {
  MagazineDM magazineDM;
  Magazine({required this.magazineDM});

  @override
  Widget build(BuildContext context) {
    return  Container(
        margin: EdgeInsets.all(4),
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            Image.asset(magazineDM.imagePath),

            Container(
              padding: EdgeInsets.all(8),
              margin: EdgeInsets.all(8),
              color: Color.fromRGBO(16, 73, 205, 0.8),
              child: Text(magazineDM.title, style: TextStyle(color:Colors.white,
                  fontSize: 16),),
            )
          ],
        )
    );
  }

}
