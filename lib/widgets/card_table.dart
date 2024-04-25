import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(
          children: [
            _SingleCard(icon: Icons.border_all, color: Colors.blue , text: 'General'),
            _SingleCard(icon: Icons.car_rental, color: Colors.pink , text: 'Transport'),
          ]
        ),
        TableRow(
          children: [
            _SingleCard(icon: Icons.border_all, color: Colors.blue , text: 'General'),
            _SingleCard(icon: Icons.car_rental, color: Colors.pink , text: 'Transport'),
          ]
        ),
        TableRow(
          children: [
            _SingleCard(icon: Icons.border_all, color: Colors.blue , text: 'General'),
            _SingleCard(icon: Icons.car_rental, color: Colors.pink , text: 'Transport'),
          ]
        ),
        TableRow(
          children: [
            _SingleCard(icon: Icons.border_all, color: Colors.blue , text: 'General'),
            _SingleCard(icon: Icons.car_rental, color: Colors.pink , text: 'Transport'),
          ]
        ),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {

  final IconData icon;
  final Color color;
  final String text;

  const _SingleCard({required this.icon, required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color:const Color.fromRGBO(62, 66, 107, 0.7),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: color,
            radius: 30,
            child: Icon(icon, size: 40,),
          ),
          const SizedBox(height: 10,),
          Text(text, style:  TextStyle(color: color, fontSize: 18),)
        ],
      ),
    );
  }
}