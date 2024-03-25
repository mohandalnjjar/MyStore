import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:iconly/iconly.dart';
import 'package:provider/provider.dart';
import 'package:shop/core/utils/app_assets.dart';
import 'package:shop/core/utils/widgets/app_styles.dart';
import 'package:shop/features/home_feature/presentation/widgets/general_list_section.dart';
import 'package:shop/features/home_feature/presentation/widgets/profile_data_section.dart';
import 'package:shop/features/theme_Feature/manager/theme_provider/theme_provider.dart';

class ProfileViweBody extends StatelessWidget {
  const ProfileViweBody({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context, listen: true);

    return SingleChildScrollView(
      child: Column(
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
          const ProfileDataSection(),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              'General',
              style: AppStyles.styleSemiBold20,
            ),
          ),
          const GeneralListSection(),
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
          const SizedBox(
            height: 50,
          ),
          Center(
            child: ElevatedButton.icon(
              icon: const Icon(IconlyLight.logout),
              label: const Text(
                'Logout',
                style: AppStyles.styleReqular16,
              ),
              style: ElevatedButton.styleFrom(
                  // backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                  ),
              onPressed: () async {
                await showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    elevation: 0,
                    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Flexible(
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: SizedBox(
                              height: MediaQuery.sizeOf(context).height * .16,
                              child: AspectRatio(
                                aspectRatio: 1,
                                child: Image.asset(
                                  AppAssets.logOut,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 14),
                          child: Text(
                            'Confirm LogOut',
                            style: AppStyles.styleSemiBold18,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                context.pop();
                              },
                              child: const Text(
                                'Cancle',
                                style: AppStyles.styleSemiBold15,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: const Text(
                                'Ok',
                                style: AppStyles.styleSemiBold15,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
