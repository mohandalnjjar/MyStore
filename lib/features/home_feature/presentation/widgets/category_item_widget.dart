import 'package:flutter/material.dart';
import 'package:shop/core/utils/widgets/app_styles.dart';
import 'package:shop/features/home_feature/data/models/category_model.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.categoryModel});
  final CategoryModel categoryModel;
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(3),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(200),
              border: Border.all(
                color: Colors.green.withOpacity(.7),
                width: 2,
              ),
            ),
            child: Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(200),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    categoryModel.image,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            categoryModel.name,
            style: AppStyles.styleSemiBold15,
            maxLines: 2,
          ),
        ],
      ),
    );
  }
}
