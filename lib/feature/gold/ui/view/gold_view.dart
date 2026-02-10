import 'package:flutter/material.dart';

class GoldView extends StatelessWidget {
  const GoldView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Gold', style: TextStyle(fontSize: 20))),
    );
  }
}
