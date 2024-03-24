import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:shop/core/utils/widgets/app_styles.dart';
import 'package:shop/features/home_feature/presentation/widgets/custom_heart_widget.dart';

class LatestProduct extends StatelessWidget {
  const LatestProduct({super.key, required this.isdark});
  final bool isdark;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.16,
      width: MediaQuery.sizeOf(context).width * .80,
      child: Container(
        decoration: BoxDecoration(
          color:
              isdark ? const Color(0xff191233) : Colors.grey.withOpacity(0.1),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Flexible(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: AspectRatio(
                  aspectRatio: 1.1 / 1,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: FancyShimmerImage(
                      imageUrl:
                          'https://img.freepik.com/free-photo/fashion-shoes-sneakers_1203-7529.jpg?w=1060&t=st=1711186460~exp=1711187060~hmac=1e338673097ec15519ca3497ea492b6586724c940692deb02a0e45048c3d0ce0',
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'New HnoOd shose not  sale',
                      style: AppStyles.styleSemiBold18,
                      maxLines: 2,
                    ),
                    Row(
                      children: [
                        Flexible(
                          flex: 2,
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              r'12199$',
                              style: AppStyles.styleSemiGreen17
                                  .copyWith(fontSize: 30),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                        const Spacer(),
                        const Flexible(child: CustomHeart()),
                        Flexible(
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.add_shopping_cart_rounded),
                            padding: EdgeInsets.zero,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
