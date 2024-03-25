import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:shop/core/utils/app_assets.dart';
import 'package:shop/core/utils/widgets/custom_shimmer_text.dart';
import 'package:shop/features/home_feature/presentation/widgets/Custom_empty_view.dart';
import 'package:shop/features/home_feature/presentation/widgets/cart_buttom_checkout.dart';
import 'package:shop/features/home_feature/presentation/widgets/not_empty_cart_view_body.dart';

class CartView extends StatelessWidget {
  const CartView({
    super.key,
  });
  final bool isEmpty = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: isEmpty
          ? null
          : AppBar(
              leadingWidth: 80,
              leading: Image.asset(AppAssets.shoppingCart),
              title: const CustomSHimmerText(title: 'Basket'),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(IconlyLight.delete),
                )
              ],
            ),
      body: isEmpty
          ? CustomEmptyView(
              onpressed: () {},
              title: 'Whoops',
              subtitle: 'Your Cart Empty',
              buttonTitle: 'Shopping Now',
              image: AppAssets.emptyCart,
            )
          : const CartViewBody(),
      bottomSheet: isEmpty ? null : const CartCheckOut(),
    );
  }
}
