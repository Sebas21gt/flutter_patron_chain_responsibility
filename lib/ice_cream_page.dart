import 'package:flutter/material.dart';
import 'package:patron_chain_r/widgets/ice_cream.dart';
import 'package:patron_chain_r/widgets/ingredient_buttons.dart';
import 'package:patron_chain_r/widgets/price_tag.dart';
import 'handler.dart';

class IceCreamPage extends StatefulWidget {
  @override
  _IceCreamPageState createState() => _IceCreamPageState();
}

class _IceCreamPageState extends State<IceCreamPage> {
  List<String> ingredients = [];
  bool showError = false;

  void handleRequest(String request) {
    setState(() {
      showError = false;
    });
    final handler = VanillaHandler(ChocolateHandler(ErrorHandler(null)));
    handler.handleRequest(request, (response) {
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
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
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
