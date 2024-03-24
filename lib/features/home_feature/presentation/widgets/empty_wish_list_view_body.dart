import 'package:flutter/material.dart';
import 'package:shop/core/utils/app_assets.dart';
import 'package:shop/core/utils/widgets/app_styles.dart';

class EmptyWishViewBody extends StatelessWidget {
  const EmptyWishViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.16,
          ),
          Image.asset(
            AppAssets.emptyCart,
            height: MediaQuery.sizeOf(context).height * 0.35,
            width: double.infinity,
          ),
          const Text(
            'Whoops!',
            style: AppStyles.styleSemiBold35,
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Youre Cart Empty',
            style: AppStyles.styleSemiBold18,
          ),
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            ),
            child: const Text('Shopping Now'),
          )
        ],
      ),
    );
  }
}
