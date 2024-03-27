import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:shop/core/utils/validators.dart';
import 'package:shop/core/utils/widgets/app_styles.dart';
import 'package:shop/core/utils/widgets/custom_text_form_field.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({
    super.key,
  });

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  late TextEditingController _emialControler;
  late final TextEditingController _passwordControler;
  late final FocusNode _textFocusdNode;
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidate = AutovalidateMode.disabled;
  @override
  void initState() {
    _emialControler = TextEditingController();
    _passwordControler = TextEditingController();
    _textFocusdNode = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    _emialControler.dispose();
    _passwordControler.dispose();
    _textFocusdNode.dispose();

    super.dispose();
  }

  String? email, pasword;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidate,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CustomTextFromField(
            onSaved: (value) {
              email = value;
            },
            validator: (value) {
              return Validators.emailValidator(value);
            },
            hint: 'Email ID',
            icon: const Icon(
              IconlyLight.message,
            ),
            keyBordType: TextInputType.emailAddress,
          ),
          const SizedBox(
            height: 25,
          ),
          CustomTextFromField(
            onSaved: (value) {
              pasword = value;
            },
            validator: (value) {
              return Validators.passwordValidator(value);
            },
            keyBordType: TextInputType.visiblePassword,
            hint: 'Password',
            icon: const Icon(
              IconlyLight.lock,
            ),
          ),
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
            onPressed: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                autovalidate = AutovalidateMode.always;
                setState(() {});
              }
            },
            child: Text(
              'Login',
              style: AppStyles.styleSemiBold18.copyWith(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
