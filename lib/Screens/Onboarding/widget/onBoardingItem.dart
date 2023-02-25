import 'package:flutter/material.dart';

class BoardingModel {
  final String imagePath;
  final Widget text;

  BoardingModel({
    required this.imagePath,
    required this.text,
  });
}

class onBoardingItem extends StatelessWidget {
  const onBoardingItem({
    super.key,
    required this.boarding,
  });

  final BoardingModel boarding;

  @override
  Widget build(BuildContext context) => Column(
        children: [
          SizedBox(
            height: 10,
          ),
          boarding.text,
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Image.asset('${boarding.imagePath}'),
          ),
        ],
      );
}
