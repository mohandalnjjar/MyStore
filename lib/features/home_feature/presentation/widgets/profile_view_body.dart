import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:provider/provider.dart';
import 'package:shop/core/utils/app_assets.dart';
import 'package:shop/core/utils/widgets/app_styles.dart';
import 'package:shop/features/home_feature/data/models/list_tile_model.dart';
import 'package:shop/features/home_feature/presentation/widgets/custom_list_tile.dart';
import 'package:shop/features/theme_Feature/manager/theme_provider/theme_provider.dart';

class ProfileViweBody extends StatelessWidget {
  const ProfileViweBody({super.key});
  static List<ListTileModel> dataList = [
    ListTileModel(
      title: 'All Orders',
      imagePath: AppAssets.order,
      onPressed: () {},
    ),
    ListTileModel(
      title: 'Wish List',
      imagePath: AppAssets.wishlist,
      onPressed: () {},
    ),
    ListTileModel(
      title: 'Viewed Recently',
      imagePath: AppAssets.recent,
      onPressed: () {},
    ),
    ListTileModel(
      title: 'Address',
      imagePath: AppAssets.address,
      onPressed: () {},
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context, listen: true);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Visibility(
          visible: false,
          child: Center(
            child: Text(
              'Please Login',
              style: AppStyles.styleSemiBold20,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Row(
            children: [
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Theme.of(context).cardColor,
                  border: Border.all(
                    color: Theme.of(context).colorScheme.background,
                    width: 3,
                  ),
                  image: const DecorationImage(
                      image: CachedNetworkImageProvider(
                        'https://images.pexels.com/photos/14424034/pexels-photo-14424034.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                      ),
                      fit: BoxFit.fill),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'HnoOd Basha',
                    style: AppStyles.styleSemiBold18,
                  ),
                  Text('moalnjjar@gmail.com'),
                ],
              )
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            'General',
            style: AppStyles.styleSemiBold20,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(
            dataList.length,
            (index) => CustomListTile(
              listTileModel: dataList[index],
            ),
          ),
        ),
        SwitchListTile(
          secondary: Image.asset(
            AppAssets.theme,
            height: 45,
          ),
          title: Text(
            '${themeProvider.getDarkTheme ? "Dark Mode" : "Light Mode"}',
          ),
          value: themeProvider.getDarkTheme,
          onChanged: (value) {
            themeProvider.setDarkTheme(themeValue: value);
          },
        ),
        const Spacer(),
        Center(
          child: ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(IconlyLight.logout),
            label: const Text('Logout'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            ),
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
