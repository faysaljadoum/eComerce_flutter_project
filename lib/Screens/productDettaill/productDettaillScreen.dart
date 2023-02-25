import 'package:flutter/material.dart';

import '../../models/productModel.dart';
import 'widgets/productDettailBody.dart';
import 'widgets/productDettailHeader.dart';
import 'widgets/productImages.dart';

class ProductDettaillScreen extends StatelessWidget {
  const ProductDettaillScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments
        as ProductDettaillScreenArguments;
    ProductModel product = args.product;
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6F9),
      body: ListView(
        children: [
          ProductDettailHeader(rating: product.rating),
          ProductImages(
            images: product.images,
            id: product.id,
          ),
          SizedBox(
            height: 26,
          ),
          ProductDettailBody(product: product),
        ],
      ),
    );
  }
}

class ProductDettaillScreenArguments {
  final ProductModel product;
  ProductDettaillScreenArguments(this.product);
}
