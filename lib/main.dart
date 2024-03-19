import 'package:flutter/material.dart';
import 'package:shop/features/home_feature/presentation/views/home_view.dart';

void main(List<String> args) {
  runApp(const MyStore());
}

class MyStore extends StatelessWidget {
  const MyStore({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Store',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.blueAccent),
      home: const HomeView(),
    );
  }
}
