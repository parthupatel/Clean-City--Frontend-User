import 'package:clean_city/Screens/onboarding/onboardScreen.dart';
import 'package:clean_city/utils/router.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    navigate();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: Image.asset(
          'assets/images/clean.png',
          width: width*0.8,
          height: height*0.8,
        ),
      ),
    );
  }

  void navigate() {
    Future.delayed(
      const Duration(seconds: 5),
      () {
        PageNavigator(ctx: context).nextPage(page: const OnboardScreen());
      },
    );
  }
}
