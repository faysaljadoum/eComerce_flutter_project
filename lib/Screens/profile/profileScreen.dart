import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'widget/profileContainerItem.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Icons.arrow_back_ios_new_rounded,
                    size: 16,
                    color: Colors.grey,
                  ),
                  const Text(
                    'Profile',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Icon(
                    Icons.arrow_back_ios_new_rounded,
                    size: 16,
                    color: Colors.white,
                  ),
                ],
              ),
              SizedBox(height: 20),
              SizedBox(
                width: 100,
                height: 140,
                child: Stack(
                  children: [
                    Image.asset("assets/images/Profile Image.png"),
                    Positioned(
                        top: 63,
                        left: 60,
                        child: IconButton(
                          onPressed: () {},
                          icon:
                              SvgPicture.asset("assets/icons/Camera Icon.svg"),
                        )),
                  ],
                ),
              ),
              const ProfileIContainerItem(
                text: "My Account",
                iconPath: "assets/icons//User Icon.svg",
              ),
              const SizedBox(
                height: 20,
              ),
              const ProfileIContainerItem(
                text: "Notifications",
                iconPath: "assets/icons/Bill Icon.svg",
              ),
              const SizedBox(
                height: 20,
              ),
              const ProfileIContainerItem(
                text: "Settings",
                iconPath: "assets/icons/Settings.svg",
              ),
              const SizedBox(
                height: 20,
              ),
              const ProfileIContainerItem(
                text: "Help Center",
                iconPath: "assets/icons//Question mark.svg",
              ),
              const SizedBox(
                height: 20,
              ),
              const ProfileIContainerItem(
                text: "Log out",
                iconPath: "assets/icons/Log out.svg",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
