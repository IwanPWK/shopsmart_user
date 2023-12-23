import 'package:flutter/material.dart';

import '../services/assets_manager.dart';
import '../widgets/empty_bag_widget.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EmptyBagWidget(
        imagePath: AssetsManager.shoppingBasket,
        title: "Your cart is empty",
        subtitle:
            "Looks like your cart is empty add something and make me happy",
        buttonText: "Shop now",
      ),
    );
  }
}
