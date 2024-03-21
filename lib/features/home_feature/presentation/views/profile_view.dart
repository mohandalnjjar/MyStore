import 'package:flutter/material.dart';
import 'package:shop/core/utils/app_assets.dart';
import 'package:shop/core/utils/widgets/custom_shimmer_text.dart';
import 'package:shop/features/home_feature/presentation/widgets/profile_view_body.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 80,
        leading: Image.asset(AppAssets.shoppingCart),
        title: const CustomSHimmerText(
          title: 'HnoOd Store',
        ),
      ),
      body: const ProfileViweBody(),
    );
  }
}
