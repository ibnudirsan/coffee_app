import './menu_item_card.dart';
import 'package:flutter/material.dart';

class ColdCoffeePage extends StatelessWidget {
  const ColdCoffeePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        MenuItemCard(
          name: "Cold Coffee",
          image: "assets/coffee_2.jpg",
        ),
        MenuItemCard(
          name: "Cold Coffee",
          image: "assets/coffee_2.jpg",
        ),
        MenuItemCard(
          name: "COld Coffee",
          image: "assets/coffee_2.jpg",
        ),
        MenuItemCard(
          name: "Cold Coffee",
          image: "assets/coffee_2.jpg",
        ),
      ],
    );
  }
}
