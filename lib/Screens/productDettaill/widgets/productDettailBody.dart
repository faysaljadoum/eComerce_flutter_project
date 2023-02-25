import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test/models/productModel.dart';

import 'topRoundedCorners.dart';

class ProductDettailBody extends StatelessWidget {
  final ProductModel product;
  const ProductDettailBody({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TopRoundedCorners(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(top: 20, left: 20, bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
                width: double.maxFinite,
                alignment: Alignment.centerLeft,
                child: Text(
                  product.title,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w500),
                )),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              margin: const EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                color: product.isFavourite
                    ? const Color(0xFFFFE6E6)
                    : const Color(0xFFFF4848),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
              ),
              child: SvgPicture.asset(
                "assets/icons/Call.svg",
                color: product.isFavourite
                    ? const Color(0xFFFF4848)
                    : const Color(0xFFDBDEE4),
              ),
            ),
            Text(
              product.description,
              style: const TextStyle(color: Colors.grey, height: 1.8),
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              children: [
                const Text(
                  "See More Detail",
                  style: TextStyle(color: Color(0xFFF77547)),
                ),
                const SizedBox(
                  width: 8,
                ),
                const Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 12,
                  color: Color(0xFFF77547),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
