import 'package:card_swiper/card_swiper.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';

class HomeViewSwiperSection extends StatelessWidget {
  const HomeViewSwiperSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * .25,
      child: Swiper(
        duration: 2000,
        autoplay: true,
        itemCount: 3,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: FancyShimmerImage(
              imageUrl:
                  'https://images.pexels.com/photos/244206/pexels-photo-244206.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
              boxFit: BoxFit.fill,
            ),
          ),
        ),
        pagination: const SwiperPagination(
          builder: DotSwiperPaginationBuilder(
            color: Colors.white,
            activeColor: Colors.green,
          ),
        ),
      ),
    );
  }
}
