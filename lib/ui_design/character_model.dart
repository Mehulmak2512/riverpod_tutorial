import 'package:flutter/material.dart';

class Character {
  final String name;
  final String image;
  final String description;
  final List<Color> colors;

  Character({required this.name, required this.image, required this.description, required this.colors});
}

List<Character> character = [
  Character(
      name: "Kevin",
      image: "assests/images/Kevin_minions.png",
      description:
          "By default, the widget will stay at whatever size the user drags it to. To make the widget snap to specific sizes whenever they lift their finger during a drag, set snap to true. The sheet will snap between minChildSize and maxChildSize. Use snapSizes to add more sizes for the sheet to snap between.",
      colors: [
        Colors.orange.shade200,
        Colors.deepOrangeAccent.shade400,
      ]
  ),
  Character(
      name: "Agnes",
      image: "assests/images/Agnes_gru.png",
      description:
          "By default, the widget will stay at whatever size the user drags it to. To make the widget snap to specific sizes whenever they lift their finger during a drag, set snap to true. The sheet will snap between minChildSize and maxChildSize. Use snapSizes to add more sizes for the sheet to snap between.",
      colors: [
        Colors.pink.shade200,
        Colors.pinkAccent.shade400,
      ]
  ),
  Character(
      name: "Agnes",
      image: "assests/images/Agnes_gru.png",
      description:
          "By default, the widget will stay at whatever size the user drags it to. To make the widget snap to specific sizes whenever they lift their finger during a drag, set snap to true. The sheet will snap between minChildSize and maxChildSize. Use snapSizes to add more sizes for the sheet to snap between.",
      colors: [
        Colors.blue.shade200,
        Colors.blueAccent.shade400,
      ]
  ),
];
