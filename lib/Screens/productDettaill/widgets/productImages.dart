import 'package:flutter/material.dart';

class ProductImages extends StatefulWidget {
  final List<String> images;
  final int id;
  const ProductImages({Key? key, required this.images, required this.id})
      : super(key: key);

  @override
  State<ProductImages> createState() => _ProductImagesState();
}

class _ProductImagesState extends State<ProductImages> {
  int selectedImage = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
            width: 200,
            child: AspectRatio(
                aspectRatio: 1,
                child: Hero(
                    tag: widget.id,
                    child: Image.asset(widget.images[selectedImage])))),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            widget.images.length,
            (index) => GestureDetector(
              onTap: () {
                setState(() {
                  selectedImage = index;
                });
              },
              child: Container(
                margin: const EdgeInsets.only(right: 8),
                padding: const EdgeInsets.all(6),
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  border: Border.all(
                      color: Colors.orange
                          .withOpacity(selectedImage == index ? 1 : 0)),
                ),
                child: Image.asset(widget.images[index]),
              ),
            ),
          ),
        )
      ],
    );
  }
}
