import 'package:flutter/material.dart';
import 'package:shop/core/utils/widgets/custom_text_form_filed.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 13),
        child: Column(
          children: [
            CustomTextFromFiled(),
            Text('SearchViewBody'),
          ],
        ),
      ),
    );
  }
}
