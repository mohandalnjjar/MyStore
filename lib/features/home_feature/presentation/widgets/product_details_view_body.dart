import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:shop/core/utils/widgets/app_styles.dart';

class ProductDetailsViewBody extends StatelessWidget {
  const ProductDetailsViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 18),
            child: SizedBox(
              height: MediaQuery.sizeOf(context).height * .35,
              width: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: FancyShimmerImage(
                  imageUrl:
                      'https://img.freepik.com/premium-psd/isolated-realistic-shiny-red-modern-sport-city-sedan-car-from-front-view_16145-3546.jpg?w=1060',
                  boxFit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                flex: 2,
                child: Text(
                  'Mohanad Alnjjar',
                  style: AppStyles.styleSemiBold21,
                ),
              ),
              Flexible(
                child: Text(
                  r'14343.2$',
                  style: AppStyles.styleSemiGreen17,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 14,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 42,
                  width: 42,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      50,
                    ),
                    color: Colors.green.withOpacity(0.5),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(IconlyLight.heart),
                  ),
                ),
                const SizedBox(
                  width: 7,
                ),
                Expanded(
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      // padding: EdgeInsets.all(12),
                      backgroundColor:
                          Theme.of(context).scaffoldBackgroundColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {},
                    icon: const Icon(Icons.add),
                    label: const Text(
                      'Add to cart',
                      style: AppStyles.styleReqular15,
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          const Flexible(
            flex: 2,
            child: Text(
              'All About',
              style: AppStyles.styleSemiBold21,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          Text(
            ' describing car, describing vehicle words; 5-speed 6-speed Safe Standardhanced Pinpoint ' *
                100,
            style: AppStyles.styleSemiReqular15,
          ),
        ],
      ),
    );
  }
}
