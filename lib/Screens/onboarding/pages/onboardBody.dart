import 'package:clean_city/Model/onboardData.dart';
import 'package:clean_city/Screens/AuthScreens/login.dart';
import 'package:clean_city/Screens/onboarding/pages/onboardContent.dart';
import 'package:clean_city/Styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardBody extends StatefulWidget {
  const OnboardBody({Key? key}) : super(key: key);

  @override
  _OnboardBodyState createState() => _OnboardBodyState();
}

class _OnboardBodyState extends State<OnboardBody> {
  int currentPage = 0;
  //controller to keep track of page
  PageController _controller = PageController();
  //checking for last page
  bool onLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 80, bottom: 25, right: 25),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _controller.jumpToPage(2);
                        });
                      },
                      child: Text(
                        "Skip",
                        style: GoogleFonts.openSans(
                          color: primaryColor,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          PageView.builder(
            controller: _controller,
            onPageChanged: (value) {
              setState(() {
                onLastPage = (value == 2);
              });
            },
            itemCount: onboardData.length,
            itemBuilder: ((context, index) => OnboardContent(
                  head: onboardData[index]['head'] as String,
                  image: onboardData[index]["image"] as String,
                  text: onboardData[index]["text"] as String,
                )),
          ),
          Container(
            alignment: Alignment(0, 0.7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SmoothPageIndicator(
                  controller: _controller,
                  count: onboardData.length,
                  effect: WormEffect(
                    activeDotColor: secondaryColor,
                    dotColor: grey,
                  ),
                ),
                const SizedBox(
                  width: 50,
                ),
                Container(
                  width: 70,
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        onLastPage
                            ? GestureDetector(
                                onTap: () {
                                  Get.to(Login(),
                                      duration:
                                          const Duration(milliseconds: 800),
                                      curve: Curves.bounceOut,
                                      transition: Transition.fade);
                                },
                                child: Text(
                                  'Done',
                                  style: GoogleFonts.openSans(
                                    fontStyle: FontStyle.normal,
                                    color: white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              )
                            : GestureDetector(
                                onTap: () {
                                  _controller.nextPage(
                                      duration: Duration(milliseconds: 500),
                                      curve: Curves.easeIn);
                                },
                                child: Text(
                                  'Next',
                                  style: GoogleFonts.openSans(
                                    fontStyle: FontStyle.normal,
                                    color: white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
