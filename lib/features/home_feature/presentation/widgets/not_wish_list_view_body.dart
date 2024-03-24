import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:shop/features/home_feature/presentation/widgets/custom_poduct_item.dart';

class NotEmptyWishListViewBody extends StatelessWidget {
  const NotEmptyWishListViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: [
      SliverDynamicHeightGridView(
        itemCount: 100,
        builder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: CustomProductItem(),
          );
        },
        crossAxisCount: 2,
      )
    ]);
  }
}
