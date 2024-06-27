import 'package:flutter/material.dart';

import 'ingredient_button.dart';

class IngredientButtons extends StatelessWidget {
  const IngredientButtons({
    required this.onIngredientSelected,
    super.key,
  });
  final Function(String) onIngredientSelected;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        IngredientButton(
          label: '🍦',
          onPressed: () => onIngredientSelected('Vainilla'),
        ),
        IngredientButton(
          label: '🍫',
          onPressed: () => onIngredientSelected('Chocolate'),
        ),
        IngredientButton(
          label: '🍓',
          onPressed: () => onIngredientSelected('Strawberry'),
        ),
        IngredientButton(
          label: '🍬',
          onPressed: () => onIngredientSelected('Gummies'),
        ),
      ],
    );
  }
}
