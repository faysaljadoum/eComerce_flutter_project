import 'package:flutter/material.dart';

import '../../../models/specialOferModel.dart';
import 'sectionTitle.dart';
import 'specialOfferItem.dart';

class SpecialOffers extends StatelessWidget {
  const SpecialOffers({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SectionTitle(
          title: "Special for you",
        ),
        SizedBox(
          width: double.maxFinite,
          height: 100,
          child: ListView.builder(
              itemCount: specialOfferList.length,
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 20),
              physics: BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return SpecialOfferItem(
                  specialOffer: specialOfferList[index],
                );
              }),
        )
      ],
    );
  }
}
