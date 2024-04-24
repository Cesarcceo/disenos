import 'package:flutter/material.dart';


class BasicDesignScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Image(image: AssetImage('assets/paisaje.jpg')),
          SizedBox(height: 30),
          Title(),
          SizedBox(height: 20),
          BotonSection(),
          Paraf()
        ],
      ),
   );
  }
}



class Title extends StatelessWidget {
  const Title({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Oeschinen Lake Campground', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              Text('Kandersteg, Switzerland', style: TextStyle(color: Colors.black45, fontSize: 20)),
            ],
          ),
          Expanded(child: Container()),
          const Icon(Icons.star, color: Colors.red, size: 30,),
          const Text('41')
        ],
      ),
    );
  }
}


class BotonSection extends StatelessWidget {
  const BotonSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10,),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _CustomBotton(icon: Icons.call, text: 'CALL',),
          _CustomBotton(icon: Icons.rocket, text: 'ROUTE',),
          _CustomBotton(icon: Icons.share, text: 'SHARE',),
          
        ],
      ),
    );
  }
}

class _CustomBotton extends StatelessWidget {

  final IconData icon;
  final String text;
  const _CustomBotton({
    required this.icon, required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, size: 35, color: Colors.blue),
        Text(text, style: const TextStyle(fontSize: 15, color: Colors.blue))
      ],
    );
  }
}


class Paraf extends StatelessWidget {
  const Paraf({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: const Text(
        'Ullamco pariatur laborum quis qui commodo elit anim do Lorem ea commodo esse voluptate aliquip. Adipisicing aliquip eiusmod deserunt id cillum nisi aliquip ullamco non quis tempor. Deserunt culpa cupidatat Lorem aliquip veniam sunt. Labore nulla ex proident ad ut. Magna labore ea occaecat consequat deserunt dolore consequat voluptate sit duis officia nisi commodo exercitation. Pariatur ipsum est irure veniam ipsum elit. Do adipisicing do sunt amet pariatur id dolore aute commodo.', 
        style: TextStyle(fontSize: 20)
      ),
    );
  }
}