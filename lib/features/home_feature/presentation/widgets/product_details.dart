import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:shop/features/home_feature/presentation/widgets/product_details_view_body.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HnoOd Store'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Badge(
              label: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text('10'),
              ),
              child: Icon(
                IconlyLight.bag,
              ),
            ),
          )
        ],
      ),
      body: const ProductDetailsViewBody(),
    );
  }
}
