import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/core/utils/app_router.dart';
import 'package:shop/features/theme_Feature/manager/theme_provider/theme_provider.dart';
import 'package:shop/features/theme_Feature/data/repos/app_theme.dart';

void main(List<String> args) {
  runApp(const MyStore());
}

class MyStore extends StatelessWidget {
  const MyStore({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ThemeProvider()..getTheme(),
        )
      ],
      child: Consumer<ThemeProvider>(builder: (context, themeProvider, child) {
        return MaterialApp.router(
          title: 'My Store',
          debugShowCheckedModeBanner: false,
          theme: ThemeRepo.theme(
              isDarkTheme: themeProvider.getDarkTheme, context: context),
          routerConfig: AppRouterConfig.router,
        );
      }),
    );
  }
}
