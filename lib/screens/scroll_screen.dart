import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class ScrollScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 86, 177, 252),
      body:Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.5,0.6],
            colors: [
              Color(0xff5EE8C5),
              Color.fromARGB(255, 86, 177, 252)
            ]
            ),
        ),
        child: PageView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          children: [
            page1(),
            page2()
          ],
        ),
      ) 
    );
  }
}

class page2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 86, 177, 252),
      child: Center(
        child: TextButton(
          onPressed: (){} ,
          style: TextButton.styleFrom(
            backgroundColor: Colors.blue[600],
            shape: const StadiumBorder()
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Text('Bienvenido', style: TextStyle(color: Colors.white, fontSize: 30 ))
          ),
        ),
      ),
    );
  }
}

class page1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        _Background(),
        MainConten()
      ],
    );
  }
}

class MainConten extends StatelessWidget {
  const MainConten({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var textStyle = TextStyle(fontSize: 60, fontWeight: FontWeight.bold, color: Colors.white);
    return SafeArea(
      bottom: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 30,),
          Text('11°',style: textStyle),
          Text('Miércoles',style: textStyle),
          Expanded(child: Container()),
          const Icon(Icons.keyboard_arrow_down_outlined,size: 100, color: Colors.white,),
        ],
      ),
    );
  }
}

class _Background extends StatelessWidget {
  const _Background({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 86, 177, 252),
      height: double.infinity,
      alignment: Alignment.topCenter,
      child: const Image(image: AssetImage('assets/scroll-1.png')));
  }
}