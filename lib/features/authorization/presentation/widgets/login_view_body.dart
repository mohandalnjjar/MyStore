import 'package:flutter/material.dart';
import 'package:shop/core/utils/app_assets.dart';
import 'package:shop/core/utils/widgets/app_styles.dart';
import 'package:shop/features/authorization/presentation/widgets/login_form.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SingleChildScrollView(
        child: Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(
                height: 25,
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * .30,
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
              const LoginForm(),
              const SizedBox(
                height: 10,
              ),
              Padding(
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
                        style: AppStyles.styleReqular15
                            .copyWith(color: Colors.grey),
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
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffF1F5F6),
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      AppAssets.google,
                      height: 25,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Login With Google',
                      style: AppStyles.styleSemiBold18
                          .copyWith(fontSize: 16, color: Colors.black),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'New To Loginstics?',
                    style: AppStyles.styleSemiBold14grey,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Register',
                      style: AppStyles.styleReqular15.copyWith(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
