import 'package:flutter/material.dart';
import '../../enums/menuState.dart';
import 'widget/cashBack.dart';
import 'widget/categories.dart';
import 'widget/customBottomNavBar.dart';
import 'widget/custom_topbar.dart';
import 'widget/popularProduct.dart';
import 'widget/specialOffers.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: const [
              CustomTopbar(),
              CashBack(),
              Categories(),
              SpecialOffers(),
              SizedBox(
                height: 10,
              ),
              PopularProduct(),
            ],
          ),
        ),
      ),
      bottomNavigationBar:
          const CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
