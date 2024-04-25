import 'package:flutter/material.dart';

class PageTitle extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom:  false,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 25),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            Text('Clasifi transaction',style:  TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),),
            SizedBox(height: 10),
            Text('Clasifi this transaction into a \nparticular cartegory',style:  TextStyle(fontSize: 22, color: Colors.white)),
          ],
        ),
      ),
    );
  }
}