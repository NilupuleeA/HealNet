import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Healing Page'),
      ),
      body: Center(
        child: Image.asset('assets/Images/3.jpeg'),
      ),
    );
  }
}