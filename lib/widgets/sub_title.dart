import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../resource/AppText.dart';
import '../resource/colors.dart';

class SubTitle extends StatelessWidget {
  final String mainTitle, subTitle;
  const SubTitle({super.key, required this.mainTitle, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration:  const BoxDecoration(
          gradient: LinearGradient(begin: Alignment.bottomCenter, end: Alignment.topCenter, colors: [
            kThirdColor,
            Colors.transparent,
          ]),
        ),
        height: Get.height * 0.55,
        width: Get.width,
        child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Column(children: [
              const SizedBox(height: 30),
              RichText(
                  text: TextSpan(
                      text: kT1,
                      style: GoogleFonts.bebasNeue(textStyle: const TextStyle(fontSize: 30, letterSpacing: 5)),
                      children: [
                        TextSpan(text: kT2, style: GoogleFonts.bebasNeue(textStyle: const TextStyle(color: kFirstColor)))
                      ])),
              const Spacer(),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Text(
                      mainTitle,
                      style: GoogleFonts.nunitoSans(
                          textStyle: const TextStyle(fontSize: 40, color: kColorWhite, fontWeight: FontWeight.bold)),
                    ),
                    const SizedBox(height: 2),
                    Text(subTitle, style: GoogleFonts.nunitoSans(textStyle: const TextStyle(color: kColorWhite)))
                  ]))
            ])));
  }
}
