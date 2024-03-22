import 'package:flutter/material.dart';
import 'package:shop/core/utils/app_assets.dart';
import 'package:shop/core/utils/widgets/custom_shimmer_text.dart';
import 'package:shop/features/home_feature/presentation/widgets/searchViewBody.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          leadingWidth: 80,
          leading: Image.asset(AppAssets.shoppingCart),
          title: const CustomSHimmerText(
            title: 'Search',
          ),
        ),
        body: const SearchViewBody(),
      ),
    );
  }
}
