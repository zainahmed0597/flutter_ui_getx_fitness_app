import 'package:flutter/material.dart';
import 'package:flutter_ui_getx_fitness_app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../resource/AppText.dart';
import '../resource/colors.dart';
import '../resource/image_path.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColorBlack,
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(kImage1),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            height: Get.height,
            width: Get.width,
            color: kColorBlack.withOpacity(0.6),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
              child: Column(
                children: [
                  const SizedBox(height: 30),
                  RichText(
                      text: TextSpan(
                          text: kT1,
                          style: GoogleFonts.bebasNeue(textStyle: const TextStyle(fontSize: 30, letterSpacing: 5)),
                          children: [
                        TextSpan(
                            text: kT2, style: GoogleFonts.bebasNeue(textStyle: const TextStyle(color: kFirstColor)))
                      ])),
                  const Spacer(),
                  // About You text & other text
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          kT3,
                          style: GoogleFonts.nunitoSans(
                              textStyle:
                                  const TextStyle(fontSize: 40, color: kColorWhite, fontWeight: FontWeight.bold)),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          kT4,
                          style: GoogleFonts.nunitoSans(
                            textStyle: const TextStyle(color: kColorWhite),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  TextButton(
                      onPressed: () => Get.toNamed(AppPages.about),
                      child: Container(
                        height: 50,
                        width: Get.width * 0.7,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(25), color: kFirstColor),
                        child: Center(
                          child: Text(
                            kT5,
                            style: GoogleFonts.roboto(
                                textStyle:
                                    const TextStyle(color: kColorWhite, fontSize: 20, fontWeight: FontWeight.bold)),
                          ),
                        ),
                      )),
                  TextButton(
                      onPressed: () => Get.toNamed(AppPages.login),
                      child: Container(
                        height: 50,
                        width: Get.width * 0.7,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(width: 2, color: kFirstColor),
                            color: Colors.transparent),
                        child: Center(
                          child: Text(
                            kT6,
                            style: GoogleFonts.roboto(
                                textStyle:
                                    const TextStyle(color: kColorWhite, fontSize: 20, fontWeight: FontWeight.bold)),
                          ),
                        ),
                      )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
