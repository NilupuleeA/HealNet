import 'package:flutter/material.dart';


class Page5 extends StatelessWidget {
  const Page5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pharmacy Page'),
      ),
      body: Center(
        child: Image.asset('assets/Images/5.jpeg'),
      ),
    );
  }
}