import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iconly/iconly.dart';
import 'package:shop/core/utils/widgets/app_styles.dart';
import 'package:shop/features/home_feature/presentation/widgets/quantity_buttom_sheet.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 6),
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 1 / 1,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: FancyShimmerImage(
                  imageUrl:
                      'https://images.pexels.com/photos/459653/pexels-photo-459653.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: MediaQuery.sizeOf(context).width * .6,
                            child: const Text(
                              'hello this is me mohana d alnjjar an this si my app',
                              maxLines: 2,
                              style: AppStyles.styleReqular19,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      const Text(
                        r'$103',
                        style: AppStyles.styleSemiGreen17,
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () async {
                          await showModalBottomSheet(
                            context: context,
                            builder: (context) => const QuatityButtomSheet(),
                            backgroundColor:
                                Theme.of(context).scaffoldBackgroundColor,
                          );
                        },
                        icon: const Icon(
                          IconlyLight.plus,
                        ),
                        padding: EdgeInsets.zero,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          IconlyLight.heart,
                        ),
                        padding: EdgeInsets.zero,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          FontAwesomeIcons.xmark,
                        ),
                        padding: EdgeInsets.zero,
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
