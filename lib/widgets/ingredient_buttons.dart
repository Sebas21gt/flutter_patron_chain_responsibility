import 'package:flutter/material.dart';
import 'ingredient_button.dart';

class IngredientButtons extends StatelessWidget {
  final Function(String) onIngredientSelected;

  const IngredientButtons({super.key, required this.onIngredientSelected});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        IngredientButton(
            label: '🍦', onPressed: () => onIngredientSelected('Vainilla')),
        IngredientButton(
            label: '🍫', onPressed: () => onIngredientSelected('Chocolate')),
        IngredientButton(
            label: '🍓', onPressed: () => onIngredientSelected('Strawberry')),
        IngredientButton(
            label: '🍬', onPressed: () => onIngredientSelected('Gummies')),
      ],
    );
  }
}
