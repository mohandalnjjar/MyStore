import 'package:flutter/material.dart';
import 'package:shop/core/utils/app_assets.dart';
import 'package:shop/core/utils/widgets/app_styles.dart';
import 'package:shop/core/utils/widgets/custom_text_form_field.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: MediaQuery.sizeOf(context).height * .40,
            child: Image.asset(
              AppAssets.login,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'login',
            style: AppStyles.styleSemiBold36,
          ),
          const SizedBox(
            height: 20,
          ),
          const CustomTextFromField(),
          const SizedBox(
            height: 25,
          ),
          const CustomTextFromField(),
          const SizedBox(
            height: 10,
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Forget Password?',
                style: AppStyles.styleReqular15.copyWith(color: Colors.blue),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              'Login',
              style: AppStyles.styleSemiBold18.copyWith(fontSize: 16),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Row(
                children: [
                  const Expanded(
                    child: Divider(
                      height: 10,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 7),
                    child: Text(
                      'OR',
                      style:
                          AppStyles.styleReqular15.copyWith(color: Colors.grey),
                    ),
                  ),
                  const Expanded(
                    child: Divider(
                      height: 10,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
