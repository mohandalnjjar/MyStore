import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:shop/core/utils/app_assets.dart';
import 'package:shop/features/home_feature/presentation/widgets/Custom_empty_view.dart';
import 'package:shop/features/home_feature/presentation/widgets/not_wish_list_view_body.dart';

class WishListView extends StatelessWidget {
  const WishListView({super.key});
  final bool isEmpty = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: isEmpty
          ? null
          : AppBar(
              centerTitle: true,
              title: const Text('Wish List'),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(IconlyLight.delete),
                ),
              ],
            ),
      body: isEmpty
          ? CustomEmptyView(
              title: 'Whoops',
              subtitle: 'Your Wish List Empty',
              buttonTitle: 'Make a Wish Now',
              onpressed: () {},
              image: AppAssets.emptyCart,
            )
          : const NotEmptyWishListViewBody(),
    );
  }
}
