import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HeartIconButton extends StatelessWidget {
  final bool isFavorite;
  final void Function()? onPressed;

  const HeartIconButton({
    Key? key,
    required this.isFavorite,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey.withOpacity(.2),
      ),
      child: IconButton(
        icon: SvgPicture.asset(
          "assets/icons/Heart Icon_2.svg",
          color: isFavorite ? Colors.red : Colors.grey,
          height: 10,
        ),
        onPressed: onPressed,
        padding: const EdgeInsets.all(0),
      ),
    );
  }
}
