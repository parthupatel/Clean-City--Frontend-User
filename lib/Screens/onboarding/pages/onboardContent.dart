// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:clean_city/Styles/colors.dart';
import 'package:clean_city/utils/config.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardContent extends StatelessWidget {
  const OnboardContent({
    Key? key,
    required this.text,
    required this.head,
    required this.image,
  }) : super(key: key);

  final String head, image, text;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: <Widget>[
        SizedBox(
          height: height * 0.15,
        ),
        Image.asset(
          image,
          height: height * 0.4,
          width: width * 0.7,
        ),
        Text(
          head,
          textAlign: TextAlign.center,
          style: GoogleFonts.openSans(
            color: primaryColor,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 8,
            vertical: 4,
          ),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: GoogleFonts.openSans(
              color: black,
              fontSize: 16,
              fontStyle: FontStyle.normal,
            ),
          ),
        ),
      ],
    );
  }
}
