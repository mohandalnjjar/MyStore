import 'package:flutter/material.dart';
import 'package:shop/core/utils/app_assets.dart';
import 'package:shop/core/utils/constance.dart';
import 'package:shop/features/home_feature/data/models/list_tile_model.dart';
import 'package:shop/features/home_feature/presentation/widgets/custom_list_tile.dart';

class GeneralListSection extends StatelessWidget {
  const GeneralListSection({
    super.key,
  });

  static List<ListTileModel> dataList = [
    ListTileModel(
      title: 'All Orders',
      imagePath: AppAssets.order,
      approuter: '',
    ),
    ListTileModel(
      title: 'Wish List',
      imagePath: AppAssets.wishlist,
      approuter: kWishListViewRouter,
    ),
    ListTileModel(
      title: 'Viewed Recently',
      imagePath: AppAssets.recent,
      approuter: '',
    ),
    ListTileModel(
      title: 'Address',
      imagePath: AppAssets.address,
      approuter: '',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(
        dataList.length,
        (index) => CustomListTile(
          listTileModel: dataList[index],
        ),
      ),
    );
  }
}
