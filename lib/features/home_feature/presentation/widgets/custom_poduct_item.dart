import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:shop/core/utils/widgets/app_styles.dart';

class CustomProductItem extends StatelessWidget {
  const CustomProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(17),
          child: AspectRatio(
            aspectRatio: 1 / 1,
            child: FancyShimmerImage(
                imageUrl:
                    'https://images.pexels.com/photos/170811/pexels-photo-170811.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          children: [
            const Flexible(
              flex: 3,
              child: Text(
                'HnoOd Cars Not For sale',
                style: AppStyles.styleReqular16,
                maxLines: 2,
              ),
            ),
            Flexible(
                child: IconButton(
              onPressed: () {},
              icon: const Icon(IconlyLight.heart),
            ))
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Flexible(
              flex: 3,
              child: Text(
                r'$199.3',
                style: AppStyles.styleReqularGreen16,
              ),
            ),
            Flexible(
                child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.add_shopping_cart_outlined),
            ))
          ],
        )
      ],
    );
  }
}
