import 'package:flutter/material.dart';
import 'package:shop/features/home_feature/presentation/views/cart_view.dart';
import 'package:shop/features/home_feature/presentation/views/home_view.dart';
import 'package:shop/features/home_feature/presentation/views/profile_view.dart';
import 'package:shop/features/home_feature/presentation/views/search_view.dart';

class RootView extends StatefulWidget {
  const RootView({super.key});

  @override
  State<RootView> createState() => _RootViewState();
}

class _RootViewState extends State<RootView> {
  late PageController controller;
  int currentPage = 0;
  List<Widget> views = const [
    HomeView(),
    ProfileView(),
    SearchView(),
    CartView(),
  ];
  @override
  void initState() {
    super.initState();

    controller = PageController(initialPage: currentPage);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          controller: controller,
          children: views,
        ),
      ),
    );
  }
}
