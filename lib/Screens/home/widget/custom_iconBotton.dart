import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomIconBotton extends StatelessWidget {
  final String imagePath;
  const CustomIconBotton({
    super.key,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(.1),
        shape: BoxShape.circle,
      ),
      child: IconButton(
        onPressed: () {},
        icon: SvgPicture.asset(imagePath),
      ),
    );
  }
}
