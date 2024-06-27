import 'package:flutter/material.dart';

import 'handler.dart';
import 'widgets/ice_cream.dart';
import 'widgets/ingredient_buttons.dart';
import 'widgets/price_tag.dart';

class IceCreamPage extends StatefulWidget {
  const IceCreamPage({super.key});

  @override
  State<IceCreamPage> createState() => _IceCreamPageState();
}

class _IceCreamPageState extends State<IceCreamPage> {
  List<String> ingredients = <String>[];
  bool showError = false;

  void handleRequest(String request) {
    setState(() {
      showError = false;
    });
    final VanillaHandler handler =
        VanillaHandler(ChocolateHandler(ErrorHandler(null)));
    handler.handleRequest(request, (String response) {
      if (response == 'Error') {
        setState(() {
          showError = true;
        });
      } else {
        setState(() {
          ingredients.add(response);
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ice Cream'),
      ),
      body: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              const PriceTag(),
              Icon(
                Icons.error,
                color: showError ? Colors.red : Colors.red.withOpacity(0.2),
                size: 50,
              ),
            ],
          ),
          const Spacer(),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IceCream(ingredients: ingredients),
                const SizedBox(height: 20),
                IngredientButtons(onIngredientSelected: handleRequest),
              ],
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
