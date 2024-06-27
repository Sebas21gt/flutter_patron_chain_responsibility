import 'package:flutter/material.dart';

class PriceTag extends StatelessWidget {
  const PriceTag({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        border: Border.all(width: 2.0),
      ),
      child: const Text(
        'Precio: 5 usd',
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
