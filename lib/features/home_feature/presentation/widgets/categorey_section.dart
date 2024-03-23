import 'package:flutter/material.dart';
import 'package:shop/core/utils/app_assets.dart';
import 'package:shop/core/utils/widgets/app_styles.dart';
import 'package:shop/features/home_feature/data/models/category_model.dart';
import 'package:shop/features/home_feature/presentation/widgets/category_item_widget.dart';

class CategoreySection extends StatelessWidget {
  const CategoreySection({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    final List<CategoryModel> categoryData = [
      CategoryModel(image: AppAssets.phone, name: 'Phones'),
      CategoryModel(image: AppAssets.laptop, name: 'laptops'),
      CategoryModel(image: AppAssets.smartWatch, name: 'Watchs'),
      CategoryModel(image: AppAssets.shose, name: 'shose'),
      CategoryModel(image: AppAssets.electronics, name: 'electronics'),
      CategoryModel(image: AppAssets.tShirt, name: 'clothes'),
      CategoryModel(image: AppAssets.cosmetics, name: 'cosmetics'),
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            'Categories',
            style: AppStyles.styleSemiBold24,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * .13,
          child: ListView.builder(
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Center(
                child: CategoryItem(
                  categoryModel: categoryData[index],
                ),
              ),
            ),
            itemCount: categoryData.length,
            scrollDirection: Axis.horizontal,
          ),
        ),
      ],
    );
  }
}
