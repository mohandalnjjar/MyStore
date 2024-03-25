import 'package:flutter/material.dart';
import 'package:shop/core/utils/widgets/app_styles.dart';

class CustomEmptyView extends StatelessWidget {
  const CustomEmptyView({
    super.key,
    required this.title,
    required this.subtitle,
    this.onpressed,
    required this.buttonTitle, required this.image,
  });

  final String title, subtitle, buttonTitle ,image;
  final void Function()? onpressed;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.16,
          ),
          Image.asset(
            image,
            height: MediaQuery.sizeOf(context).height * 0.35,
            width: double.infinity,
          ),
          Text(
            title,
            style: AppStyles.styleSemiBold35,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            subtitle,
            style: AppStyles.styleSemiBold18,
          ),
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(
            onPressed: onpressed,
            style: ElevatedButton.styleFrom(
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            ),
            child: Text(buttonTitle),
          )
        ],
      ),
    );
  }
}
