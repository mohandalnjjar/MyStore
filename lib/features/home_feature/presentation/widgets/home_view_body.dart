import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("this is me mohannd Alnjjar"),
          ElevatedButton(
            onPressed: () {},
            child: const Icon(Icons.dark_mode),
          ),
          SwitchListTile(
            title: const Text('theme'),
            value: true,
            onChanged: (value) {},
          ),
        ],
      ),
    );
  }
}
