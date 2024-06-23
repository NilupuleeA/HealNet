import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Heart Page'),
      ),
      body: Center(
        child: Image.asset('assets/Images/1.jpeg'),
      ),
    );
  }
}