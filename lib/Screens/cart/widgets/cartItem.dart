import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  final String title, imagePath, price;
  const CartItem(
      {Key? key,
      required this.title,
      required this.imagePath,
      required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey.withOpacity(.1),
            ),
            child: Image.asset(imagePath)),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    price,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.orange,
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text("x1"),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
