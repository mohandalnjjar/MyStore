import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
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
    SearchView(),
    CartView(),
    ProfileView(),
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
      bottomNavigationBar: NavigationBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: .5,
        selectedIndex: currentPage,
        onDestinationSelected: (index) {
          setState(() {
            currentPage = index;
          });
          controller.jumpToPage(currentPage);
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(IconlyLight.home),
            label: 'Home',
            selectedIcon: Icon(IconlyBold.home),
          ),
          NavigationDestination(
            icon: Icon(IconlyLight.search),
            label: 'Search',
            selectedIcon: Icon(IconlyBold.search),
          ),
          NavigationDestination(
            icon: Icon(IconlyLight.bag_2),
            label: 'Cart',
            selectedIcon: Icon(IconlyBold.bag_2),
          ),
          NavigationDestination(
            icon: Icon(IconlyLight.profile),
            label: 'Profile',
            selectedIcon: Icon(IconlyBold.profile),
          ),
        ],
      ),
    );
  }
}
