// import 'dart:html';
import 'package:flutter/material.dart';
import 'Screens/Onboarding/welcomPage1.dart';
import 'Screens/auth/Signup.dart';
import 'Screens/auth/Signin.dart';
import 'Screens/cart/cartItems.dart';
import 'Screens/home/home_screen.dart';
import 'Screens/productDettaill/productDettaillScreen.dart';
import 'Screens/profile/profileScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: "/cartItems",
      routes: {
        "/welcome": (context) => WelcomPage(),
        "/signin": (context) => const Signin(),
        "/signup": (context) => const SignupScreen(),
        "/home": (context) => const HomeScreen(),
        "/profile": (context) => const ProfileScreen(),
        "/productDettaill": (context) => const ProductDettaillScreen(),
        "/cartItems": (context) => const CartItems(),
      },
    );
  }
}
