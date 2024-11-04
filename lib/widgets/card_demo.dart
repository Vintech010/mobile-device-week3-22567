import 'package:flutter/material.dart';

class CardDemo extends StatelessWidget {
  const CardDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("Card demo"),
      ),
      body: const Card(
        child: InkWell(
          child: Column(
            children: [
              Icon(Icons.home),
              Text("CARD-1"),
            ],
          ),
        ),
      ),
    );
  }
}
