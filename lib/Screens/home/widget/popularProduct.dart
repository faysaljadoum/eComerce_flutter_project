import 'package:flutter/material.dart';
import 'package:test/Screens/home/widget/popularProductItem.dart';
import '../../../models/productModel.dart';
import '../../../models/specialOferModel.dart';
import 'sectionTitle.dart';

class PopularProduct extends StatelessWidget {
  const PopularProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SectionTitle(
          title: "Popular Product",
        ),
        SizedBox(
          width: double.maxFinite,
          height: 220,
          child: ListView.builder(
              itemCount: productsList.length,
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return PopularProductItem(
                  product: productsList[index],
                );
              }),
        )
      ],
    );
  }
}
