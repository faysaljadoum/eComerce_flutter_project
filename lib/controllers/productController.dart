import 'package:get/get_state_manager/get_state_manager.dart';

import '../models/productModel.dart';

class ProductController extends GetxController {
  int imageSelected = 0;
  bool isFavorite = false;
  int colorSelected = 0;
  int productQuantity = 0;

  void incrementQuantity() {
    productQuantity++;
    update();
  }

  void decrementQuantity() {
    if (productQuantity > 0) {
      productQuantity--;
      update();
    }
  }

  void toggleFavorite(ProductModel product) {
    product.isFavourite = !product.isFavourite;
    update();
  }
}
