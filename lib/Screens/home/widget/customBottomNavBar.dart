import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../enums/menuState.dart';

class CustomBottomNavBar extends StatelessWidget {
  final MenuState selectedMenu;
  const CustomBottomNavBar({super.key, required this.selectedMenu});

  @override
  Widget build(BuildContext context) {
    const Color inActiveIconColor = Color(0xFFB6B6B6);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, -15),
              blurRadius: 20,
              color: const Color(0xFFDADADA).withOpacity(.15),
            ),
          ],
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          )),
      child: SafeArea(
        top: false,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                "assets/icons/Cart Icon.svg",
                color: MenuState.home == selectedMenu
                    ? const Color(0xFFFF7643)
                    : inActiveIconColor,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                "assets/icons/Cart Icon.svg",
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                "assets/icons/Cart Icon.svg",
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                "assets/icons/Cart Icon.svg",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
