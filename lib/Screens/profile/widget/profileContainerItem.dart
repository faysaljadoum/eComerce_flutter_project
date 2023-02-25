import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileIContainerItem extends StatelessWidget {
  final String text, iconPath;
  const ProfileIContainerItem({
    super.key,
    required this.text,
    required this.iconPath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 50,
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Color.fromARGB(255, 248, 245, 245),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(
            iconPath,
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(
              child: Text(
            text,
            style: TextStyle(color: Color.fromARGB(255, 134, 134, 134)),
          )),
          const Icon(
            Icons.arrow_forward_ios_rounded,
            size: 16,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
