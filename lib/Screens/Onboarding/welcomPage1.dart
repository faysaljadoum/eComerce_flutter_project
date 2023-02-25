import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:test/Screens/Onboarding/widget/onBoardingItem.dart';
import '../auth/Signin.dart';

class WelcomPage extends StatefulWidget {
  @override
  State<WelcomPage> createState() => _WelcomPageState();
}

class _WelcomPageState extends State<WelcomPage> {
  var boardingController = PageController();

  List<BoardingModel> boardingList = [
    BoardingModel(
      imagePath: "assets/images/splash_1.png",
      text: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Welcome to ",
              style: const TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w300,
                fontFamily: "Roboto",
              )),
          Text("Tokoto, ",
              style: const TextStyle(
                fontWeight: FontWeight.w900,
                fontFamily: "Roboto",
              )),
          Text("Let's shop!",
              style: const TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w300,
                fontFamily: "Roboto",
              )),
        ],
      ),
    ),
    BoardingModel(
      imagePath: "assets/images/splash_2.png",
      text: Text(
          "We help people connect with us\n around United state of dettails.",
          style: const TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.w300,
            fontFamily: "Roboto",
          )),
    ),
    BoardingModel(
      imagePath: "assets/images/splash_3.png",
      text: Text("We show the easy way to shop.\n just stay at home with us.",
          style: const TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.w300,
            fontFamily: "Roboto",
          )),
    ),
  ];

  bool isLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Text(
                "TOKOTO",
                style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.italic,
                    fontFamily: "Roboto",
                    fontSize: 30,
                    color: Colors.deepOrange),
              ),
              Expanded(
                child: PageView.builder(
                  controller: boardingController,
                  onPageChanged: (int index) {
                    if (index == boardingList.length - 1) {
                      setState(() {
                        isLastPage = true;
                      });
                    } else {
                      setState(() {
                        isLastPage = false;
                      });
                    }
                  },
                  itemBuilder: (context, index) =>
                      onBoardingItem(boarding: boardingList[index]),
                  itemCount: boardingList.length,
                ),
              ),
              SmoothPageIndicator(
                controller: boardingController,
                count: boardingList.length,
                effect: ExpandingDotsEffect(
                    dotColor: Color.fromARGB(255, 218, 217, 217),
                    dotHeight: 10,
                    dotWidth: 10,
                    activeDotColor: Colors.deepOrange),
              ),
              SizedBox(
                height: 100,
              ),
              Container(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    if (isLastPage) {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Signin(),
                          ),
                          (route) => false);
                    } else {
                      boardingController.nextPage(
                        duration: Duration(milliseconds: 800),
                        curve: Curves.fastLinearToSlowEaseIn,
                      );
                    }
                  },
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                  child: Text(
                    'Continue',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
