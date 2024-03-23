import 'package:flutter/material.dart';
import 'package:shop/core/utils/widgets/app_styles.dart';

class CartCheckOut extends StatelessWidget {
  const CartCheckOut({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 68,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(
              15,
            ),
            topRight: Radius.circular(
              15,
            ),
          ),
          color: Theme.of(context).scaffoldBackgroundColor,
          border: const Border(
            top: BorderSide(
              width: 1,
              color: Colors.grey,
            ),
          ),
        ),
        child: Padding(
          padding:
              const EdgeInsets.only(left: 18, top: 10, bottom: 10, right: 6),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Total : 300 products & 7 items',
                      style: AppStyles.styleReqular19,
                    ),
                    Text(
                      r'200.0$',
                      style: AppStyles.styleReqularGreen16
                          .copyWith(fontWeight: FontWeight.w400, fontSize: 18),
                    ),
                  ],
                ),
              ),
              Flexible(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor:
                          Theme.of(context).scaffoldBackgroundColor),
                  child: const Text('Check Out'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
