import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../resource/AppText.dart';
import '../resource/colors.dart';
import '../resource/image_path.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kThirdColor,
        body: SingleChildScrollView(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Stack(
            children: [
              backgroundImage(),
              titleSubtitle(),
            ],
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                formLogin(),
                const SizedBox(height: 15),
                Center(
                    child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
                  TextButton(
                      onPressed: () {},
                      child: Container(
                        height: 50,
                        width: Get.width * 0.7,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(25), color: kFirstColor),
                        child: Center(
                          child: Text(
                            kT24,
                            style: GoogleFonts.roboto(
                                textStyle:
                                    const TextStyle(color: kColorWhite, fontSize: 20, fontWeight: FontWeight.bold)),
                          ),
                        ),
                      )),
                  TextButton(
                      onPressed: () {},
                      child: Container(
                          height: 50,
                          width: Get.width * 0.7,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              border: Border.all(width: 2, color: kFirstColor),
                              color: Colors.transparent),
                          child: Center(
                              child: Text(
                            kT25,
                            style: GoogleFonts.roboto(
                                textStyle:
                                    const TextStyle(color: kColorWhite, fontSize: 20, fontWeight: FontWeight.bold)),
                          ))))
                ]))
              ]))
        ])));
  }

  Align forgetButton() {
    return Align(
        alignment: Alignment.centerRight,
        child: TextButton(
            onPressed: () {},
            child: Text(kT18,
                style: GoogleFonts.nunitoSans(
                  textStyle: const TextStyle(color: Colors.white, fontSize: 14),
                ))));
  }

  Column formLogin() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(kT14, style: GoogleFonts.nunitoSans(textStyle: const TextStyle(color: kFifthColor, fontSize: 18))),
      const TextField(
          decoration: InputDecoration(
              hintText: kT15,
              enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: kFifthColor)),
              focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: kFifthColor)))),
      const SizedBox(height: 15),
    ]);
  }

  Container titleSubtitle() {
    return Container(
        decoration: const BoxDecoration(
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
                      kT23,
                      style: GoogleFonts.nunitoSans(
                          textStyle: const TextStyle(fontSize: 40, color: kColorWhite, fontWeight: FontWeight.bold)),
                    ),
                    const SizedBox(height: 2),
                    Text(kT13, style: GoogleFonts.nunitoSans(textStyle: const TextStyle(color: kColorWhite)))
                  ]))
            ])));
  }

  Container backgroundImage() {
    return Container(
        height: Get.height * 0.55,
        decoration: const BoxDecoration(image: DecorationImage(image: AssetImage(kImage11), fit: BoxFit.cover)));
  }
}
