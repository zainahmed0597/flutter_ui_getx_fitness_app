import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../resource/AppText.dart';
import '../resource/colors.dart';
import '../resource/image_path.dart';
import '../widgets/body_footer.dart';
import '../widgets/option_widget.dart';

class AboutView extends StatelessWidget {
  const AboutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColorBlack,
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage(kImage13),
              fit: BoxFit.cover,
            )),
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
                          tAboutYou,
                          style: GoogleFonts.nunitoSans(
                              textStyle:
                                  const TextStyle(fontSize: 40, color: kColorWhite, fontWeight: FontWeight.bold)),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          tSubTitle2,
                          style: GoogleFonts.nunitoSans(
                            textStyle: const TextStyle(color: kColorWhite),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  ValueBuilder<int?>(
                    initialValue: 0,
                    builder: (value, updateFn) => Row(
                      children: [
                        OptionWidget(
                          state: kT3,
                          detail: kT4,
                          enable: value == 0 ? true : false,
                          onTap: () => updateFn(0),
                        ),
                        const SizedBox(width: 20),
                        OptionWidget(
                          state: kT5,
                          detail: kT4,
                          enable: value == 1 ? true : false,
                          onTap: () => updateFn(1),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  const BuildFooter(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
