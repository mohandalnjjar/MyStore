import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:shop/features/home_feature/presentation/widgets/empty_wish_list_view_body.dart';
import 'package:shop/features/home_feature/presentation/widgets/not_wish_list_view_body.dart';

class WishListView extends StatelessWidget {
  const WishListView({super.key});
  final bool isEmpty = false;

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
          ? const EmptyWishViewBody()
          : const NotEmptyWishListViewBody(),
    );
  }
}
