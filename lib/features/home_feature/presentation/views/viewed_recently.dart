import 'package:flutter/material.dart';
import 'package:shop/core/utils/app_assets.dart';
import 'package:shop/features/home_feature/presentation/widgets/Custom_empty_view.dart';
import 'package:shop/features/home_feature/presentation/widgets/viewed_recently_body.dart';

class ViewedRecently extends StatelessWidget {
  const ViewedRecently({super.key});
  final bool isEmpty = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: isEmpty
          ? null
          : AppBar(
              title: const Text('Recent'),
            ),
      body: isEmpty
          ? CustomEmptyView(
              title: 'Whoops',
              subtitle: "You Don't View Any Product Yet",
              buttonTitle: 'Shopping Now',
              onpressed: () {},
              image: AppAssets.emptyCart,
            )
          : const ViewedRecentlyBody(),
    );
  }
}
