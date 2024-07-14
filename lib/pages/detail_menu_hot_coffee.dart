// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import './menu_item_card.dart';

class HotCoffeePage extends StatelessWidget {
  const HotCoffeePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: const [
          MenuItemCard(
            name: "Hot Coffee",
            image: "assets/coffee_3.jpg",
          ),
          MenuItemCard(
            name: "Hot Coffee",
            image: "assets/coffee_3.jpg",
          ),
          MenuItemCard(
            name: "Hot Coffee",
            image: "assets/coffee_3.jpg",
          ),
          MenuItemCard(
            name: "Hot Coffee",
            image: "assets/coffee_3.jpg",
          ),
        ],
      ),
    );
  }
}
