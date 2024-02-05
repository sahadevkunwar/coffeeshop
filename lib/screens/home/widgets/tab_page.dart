import 'package:coffeeshop/screens/home/widgets/coffee_item.dart';
import 'package:flutter/material.dart';

class TabBarViewIems extends StatefulWidget {
  const TabBarViewIems({super.key});

  @override
  State<TabBarViewIems> createState() => _TabBarViewIemsState();
}

class _TabBarViewIemsState extends State<TabBarViewIems> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: GridView.builder(
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 241,
                crossAxisCount: 2,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
              ),
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 7,
              itemBuilder: (context, index) {
                return const CoffeemenuItemWidget();
              },
            ),
          ),
        ],
      ),
    );
  }
}
