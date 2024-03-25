import 'package:flutter/material.dart';
import 'package:shop/features/home_feature/presentation/widgets/cart_item_widget.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 9,
      itemBuilder: (context, index) => const Center(
        child: CartItem(),
      ),
    );
  }
}
