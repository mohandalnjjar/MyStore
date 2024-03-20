import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/features/theme/manager/theme_provider/theme_provider.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context, listen: true);

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("this is me mohannd Alnjjar"),
          ElevatedButton(
            onPressed: () {},
            child: const Icon(Icons.dark_mode),
          ),
          SwitchListTile(
            title: Text(
              '${themeProvider.getDarkTheme ? "Dark Mode" : "Light Mode"}',
            ),
            value: themeProvider.getDarkTheme,
            onChanged: (value) {
              themeProvider.setDarkTheme(themeValue: value);
            },
          ),
        ],
      ),
    );
  }
}
