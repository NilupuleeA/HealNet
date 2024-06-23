import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hospital Page'),
      ),
      body: Center(
        child: Image.asset('assets/Images/4.jpeg'),
      ),
    );
  }
}
