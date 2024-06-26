import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Background extends StatelessWidget {
    final boxDecoration = const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.2,0.9],
          colors: [
            Color(0xff2E305F),
            Color(0xff202333),
          ]
        )
    );

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //gradiente
        Container(decoration: boxDecoration),
        //cosa rosa
        Positioned(
          top: -110,
          left: -30,
          child: _PinkBox()
        )
      ],
    );
  }
}

class _PinkBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -pi/4,
      child: Container(
        width: 480,
        height: 480,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          gradient: const LinearGradient(
            colors: [
              Color.fromRGBO(236, 98, 188, 1),
              Color.fromRGBO(241, 142, 172, 1),
            ]
          )
        ),
      ),
    );
  }
}