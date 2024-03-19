import 'package:flutter/material.dart';
import 'package:shop/core/utils/constance.dart';
import 'package:shop/features/home_feature/presentation/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.kLightScaffoldColor,
      body: HomeViewBody(),
    );
  }
}
