import 'package:flutter/material.dart';
import 'package:shop/core/utils/widgets/app_styles.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "this is me mohannd Alnjjar",
            style: AppStyles.styleSemiBold24,
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Icon(Icons.dark_mode),
          ),
        ],
      ),
    );
  }
}
