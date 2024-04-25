import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(
          children: [
            _SingleCard(icon: Icons.border_all, color: Colors.blue , text: 'General'),
            _SingleCard(icon: Icons.directions_bus, color: Colors.deepPurple , text: 'Transport'),
          ]
        ),
        TableRow(
          children: [
            _SingleCard(icon: Icons.shopping_bag_sharp, color: Colors.pinkAccent , text: 'Shopping'),
            _SingleCard(icon: Icons.receipt, color: Colors.orange , text: 'Bills'),
          ]
        ),
        TableRow(
          children: [
            _SingleCard(icon: Icons.movie, color: Color.fromARGB(255, 32, 107, 194) , text: 'Entretainment'),
            _SingleCard(icon: Icons.local_grocery_store, color: Colors.green , text: 'grocery'),
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
            radius: 50,
            child: Icon(icon, size: 55, color: Colors.white,),
          ),
          const SizedBox(height: 10,),
          Text(text, style:  TextStyle(color: color, fontSize: 18),)
        ],
      ),
    );
  }
}