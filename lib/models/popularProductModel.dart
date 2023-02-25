class PopularProductModel {
  final String imagePath, title;
  final String price;
  final bool isFavorite;

  PopularProductModel(
      {required this.title,
      required this.price,
      required this.isFavorite,
      required this.imagePath});
}

List<PopularProductModel> poularProductList = [
  PopularProductModel(
      imagePath: "assets/images/ps4_console_white_1.png",
      price: "\$64.99",
      title: "Wirless Controler for ps4",
      isFavorite: true),
  PopularProductModel(
      imagePath: "assets/images/Image Popular Product 2.png",
      price: "\$58.50",
      title: "Nike Sport white - Man pants",
      isFavorite: false),
  PopularProductModel(
      imagePath: "assets/images/glap.png",
      price: "\$15.49",
      title: "Outdoor Sports bike black Gloves",
      isFavorite: false),
  PopularProductModel(
      imagePath: "assets/images/wireless headset.png",
      price: "\$43.99",
      title: "Wirless Bluetooth Bass Bost",
      isFavorite: true),
];
