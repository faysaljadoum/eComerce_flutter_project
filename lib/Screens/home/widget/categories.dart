import 'package:flutter/material.dart';

import 'categoryItem.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    List categories = [
      {"title": "Flash duel", "iconPath": "assets/icons/google.svg"},
      {"title": "Bill", "iconPath": "assets/icons/google.svg"},
      {"title": "Game", "iconPath": "assets/icons/google.svg"},
      {"title": "Daily gift", "iconPath": "assets/icons/google.svg"},
      {"title": "More", "iconPath": "assets/icons/google.svg"},
    ];

    return Container(
      width: double.maxFinite,
      margin: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(
            categories.length,
            (index) => CategoryItem(
                iconPath: categories[index]["iconPath"],
                title: categories[index]["title"])),
      ),
    );
  }
}
