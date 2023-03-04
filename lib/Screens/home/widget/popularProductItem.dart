import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test/controllers/productController.dart';

import '../../../models/productModel.dart';
import '../../productDettaill/productDettaillScreen.dart';
import 'heartIconButton.dart';

class PopularProductItem extends StatelessWidget {
  final ProductModel product;
  const PopularProductItem({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, "/productDettaill",
            arguments: ProductDettaillScreenArguments(product));
      },
      child: Container(
          width: 130,
          margin: const EdgeInsets.only(right: 10),
          child: Column(
            children: [
              Container(
                height: 130,
                alignment: Alignment.center,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xffEDEEF1),
                ),
                child: Hero(
                    tag: product.id, child: Image.asset(product.images[0])),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                product.title,
                style: const TextStyle(
                  color: Color.fromARGB(255, 148, 148, 148),
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    product.price.toString(),
                    style: const TextStyle(
                      color: Color.fromARGB(255, 255, 143, 106),
                      fontWeight: FontWeight.w500,
                      fontSize: 17,
                    ),
                  ),
                  GetBuilder<ProductController>(builder: (controller) {
                    return HeartIconButton(
                      isFavorite: product.isFavourite,
                      onPressed: () {
                        controller.toggleFavorite(product);
                      },
                    );
                  }),
                ],
              )
            ],
          )),
    );
  }
}
