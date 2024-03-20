import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/features/home_feature/presentation/views/home_view.dart';
import 'package:shop/features/theme/manager/theme_provider/theme_provider.dart';
import 'package:shop/features/theme/repos/app_theme.dart';

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
          create: (context) => ThemeProvider(),
        )
      ],
      child: Consumer<ThemeProvider>(builder: (context, themeProvider, child) {
        return MaterialApp(
          title: 'My Store',
          debugShowCheckedModeBanner: false,
          theme: ThemeRepo.Theme(
              isDarkTheme: themeProvider.getDarkTheme, context: context),
          home: const HomeView(),
        );
      }),
    );
  }
}
