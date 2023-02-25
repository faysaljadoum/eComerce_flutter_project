import 'package:flutter/material.dart';
import 'package:test/models/specialOferModel.dart';

class SpecialOfferItem extends StatelessWidget {
  final SpecialOfferModel specialOffer;
  const SpecialOfferItem({
    super.key,
    required this.specialOffer,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 250,
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(24),
        child: Stack(
          children: [
            SizedBox(
              height: 100,
              width: 250,
              child: Image.asset(
                specialOffer.imagePath,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black.withOpacity(.4),
                  Colors.black.withOpacity(0)
                ],
              )),
            ),
            Positioned(
              top: 10,
              left: 20,
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "${specialOffer.name}\n",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    TextSpan(
                      text: "${specialOffer.number} brands",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ],
                  style: TextStyle(color: Colors.white, height: 1.4),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
