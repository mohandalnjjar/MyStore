import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shop/core/utils/widgets/app_styles.dart';

class ProfileDataSection extends StatelessWidget {
  const ProfileDataSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Row(
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Theme.of(context).cardColor,
              border: Border.all(
                color: Theme.of(context).colorScheme.background,
                width: 3,
              ),
              image: const DecorationImage(
                  image: CachedNetworkImageProvider(
                    'https://images.pexels.com/photos/14424034/pexels-photo-14424034.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                  ),
                  fit: BoxFit.fill),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'HnoOd Basha',
                style: AppStyles.styleSemiBold18,
              ),
              Text('moalnjjar@gmail.com'),
            ],
          )
        ],
      ),
    );
  }
}
