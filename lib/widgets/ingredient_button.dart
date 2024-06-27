import 'package:flutter/material.dart';

class IngredientButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  const IngredientButton({
    super.key,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10.0),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        shape: BoxShape.circle,
        border: Border.all(color: Colors.red, width: 3.0),
      ),
      width: 50,
      height: 50,
      child: IconButton(
        icon: Text(label),
        onPressed: onPressed,
      ),
    );
  }
}
