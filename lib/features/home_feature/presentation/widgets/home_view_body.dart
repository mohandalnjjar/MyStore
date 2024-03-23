import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/core/utils/widgets/app_styles.dart';
import 'package:shop/features/home_feature/presentation/widgets/home_view_swiper_section.dart';
import 'package:shop/features/home_feature/presentation/widgets/latest_products_widget.dart';
import 'package:shop/features/theme_Feature/manager/theme_provider/theme_provider.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const HomeViewSwiperSection(),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            'Lates Arivel',
            style: AppStyles.styleSemiBold24,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.16,
          child: ListView.builder(
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Consumer<ThemeProvider>(
                builder: (context, themeProvider, child) {
                  return LatestProduct(
                    isdark: themeProvider.getDarkTheme,
                  );
                },
              ),
            ),
          ),
        )
      ],
    );
  }
}
