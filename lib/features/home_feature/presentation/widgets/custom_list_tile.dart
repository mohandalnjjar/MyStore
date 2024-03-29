import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:iconly/iconly.dart';
import 'package:shop/features/home_feature/data/models/list_tile_model.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    required this.listTileModel,
  });

  final ListTileModel listTileModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => GoRouter.of(context).push(listTileModel.approuter),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: ListTile(
          title: Text(listTileModel.title),
          leading: Image.asset(
            listTileModel.imagePath,
            height: 45,
          ),
          trailing: IconButton(
            onPressed: listTileModel.onpressed,
            icon: const Icon(IconlyLight.arrow_right_2),
          ),
        ),
      ),
    );
  }
}
