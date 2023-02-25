class SpecialOfferModel {
  final String name, imagePath;
  final int number;

  SpecialOfferModel(
      {required this.imagePath, required this.name, required this.number});
}

List<SpecialOfferModel> specialOfferList = [
  SpecialOfferModel(
      name: "SmartPhone",
      number: 18,
      imagePath: "assets/images/Image Banner 2.png"),
  SpecialOfferModel(
      name: "Fashion",
      number: 24,
      imagePath: "assets/images/Image Banner 2.png"),
];
