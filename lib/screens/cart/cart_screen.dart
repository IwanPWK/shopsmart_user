import 'package:flutter/material.dart';

import '../../services/assets_manager.dart';
import '../../widgets/empty_bag_widget.dart';
import '../../widgets/title_text_widget.dart';
import 'bottom_checkout.dart';
import 'cart_widget.dart';

class CartScreen extends StatelessWidget {
  CartScreen({super.key});
  final bool isEmpty = true;

  final List abc = [
    const CartWidget(),
    const CartWidget(),
    const CartWidget(),
    const CartWidget(),
    const CartWidget(),
    const CartWidget(),
    const CartWidget(),
    const CartWidget(),
    const CartWidget(),
    const CartWidget()
  ];

  // Membuat GlobalKey untuk CartWidget
  // final GlobalKey _cartKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    // Mengakses dimensi dari CartWidget setelah dipasang di widget tree
    // final RenderBox cartRenderBox = _cartKey.currentContext!.findRenderObject() as RenderBox;
    // final cartWidgetWidth = cartRenderBox.size.width;
    return isEmpty
        ? Scaffold(
            body: EmptyBagWidget(
              imagePath: AssetsManager.shoppingBasket,
              title: "Your cart is empty",
              subtitle: "Looks like your cart is empty add something and make me happy",
              buttonText: "Shop now",
            ),
          )
        : Scaffold(
            appBar: AppBar(
              leading: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  AssetsManager.shoppingCart,
                ),
              ),
              title: const TitlesTextWidget(label: "Cart (6)"),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.delete_forever_rounded,
                  ),
                ),
              ],
            ),
            body: ListView.builder(
                itemCount: abc.length + 1,
                itemBuilder: (context, index) {
                  return (index >= abc.length) ? const SizedBox(height: (kBottomNavigationBarHeight + 40)) : const CartWidget();
                }),
            bottomSheet: const CartBottomSheetWidget(),
          );
  }
}
