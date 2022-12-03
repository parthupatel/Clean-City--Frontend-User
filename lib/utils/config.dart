// import 'package:flutter/material.dart';

// class SizeConfig {
//   static MediaQueryData? _mediaQueryData;
//   static double? screenWidth;
//   static double? screenHeight;
//   static double? defaultSize;
//   static Orientation? orientation;

//   void int(BuildContext context) {
//     _mediaQueryData = MediaQuery.of(context);
//     screenWidth = _mediaQueryData?.size.width;
//     screenHeight = _mediaQueryData?.size.height;
//     orientation = _mediaQueryData?.orientation;
//   }
// }

// ///Getting height per device
// double getScreenHeight(double inputHeight) {
//   double? screenHeight = SizeConfig.screenHeight;
//   //812 is the default height

//   if (screenHeight != null) {
//     return (inputHeight / 812.0) * screenHeight!;
//   }
//   return (inputHeight / 812.0);
// }

// //Getting height per device
// double getScreenWidth(double inputWidth) {
//   double? screenWidth = SizeConfig.screenWidth;
//   //375 is the default height

//   if (screenWidth != null) {
//     return (inputWidth) * screenWidth!;
//   }
//   return (inputWidth);
// }
