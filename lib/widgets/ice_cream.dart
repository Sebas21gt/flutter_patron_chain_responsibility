import 'package:flutter/material.dart';

class IceCream extends StatelessWidget {
  final List<String> ingredients;

  const IceCream({super.key, required this.ingredients});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Column(
          children: <Widget>[
            Container(
                width: 120,
                height: 200,
                decoration: const BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(100),
                    topRight: Radius.circular(100),
                  ),
                )),
            Container(
              width: 120,
              height: 30,
              color: Colors.greenAccent,
            ),
            Container(
              width: 40,
              height: 70,
              decoration: const BoxDecoration(
                color: Colors.brown,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(100),
                  bottomRight: Radius.circular(100),
                ),
              ),
            ),
          ],
        ),
        ...ingredients.map((ingredient) {
          switch (ingredient) {
            case 'Chocolate':
              return Positioned(
                top: 50,
                child: Container(
                  width: 20,
                  height: 100,
                  color: Colors.brown,
                ),
              );
              case 'Vainilla':
              return Positioned(
                top: 30,
                child: Container(
                  width: 20,
                  height: 40,
                  color: Colors.yellow[100],
                ),
              );
            default:
              return Container();
          }
        }).toList(),
      ],
    );
  }
}
