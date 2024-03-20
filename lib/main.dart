import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/features/home_feature/presentation/views/root_view.dart';
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
        return MaterialApp(
          title: 'My Store',
          debugShowCheckedModeBanner: false,
          theme: ThemeRepo.Theme(
              isDarkTheme: themeProvider.getDarkTheme, context: context),
          home: const RootView(),
        );
      }),
    );
  }
}
