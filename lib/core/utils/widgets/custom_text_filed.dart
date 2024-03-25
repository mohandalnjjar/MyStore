import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iconly/iconly.dart';

class CustomTextFromFiled extends StatefulWidget {
  const CustomTextFromFiled({
    super.key,
  });

  @override
  State<CustomTextFromFiled> createState() => _CustomTextFromFiledState();
}

class _CustomTextFromFiledState extends State<CustomTextFromFiled> {
  late TextEditingController textFieldController;
  @override
  void initState() {
    textFieldController = TextEditingController();

    super.initState();
  }

  @override
  void dispose() {
    textFieldController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textFieldController,
      decoration: InputDecoration(
        filled: false,
        suffixIcon: IconButton(
          onPressed: () {
            textFieldController.clear();
            FocusScope.of(context).unfocus();
          },
          icon: const Icon(
            FontAwesomeIcons.xmark,
            color: Colors.blue,
          ),
        ),
        prefixIcon: const Icon(
          IconlyLight.search,
          color: Colors.blue,
        ),
        hintText: 'Search',
      ),
    );
  }
}
