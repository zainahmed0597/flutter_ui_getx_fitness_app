import 'package:flutter/material.dart';
import 'package:flutter_ui_getx_fitness_app/widgets/sub_title.dart';
import 'package:flutter_ui_getx_fitness_app/widgets/body_header.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../resource/AppText.dart';
import '../resource/colors.dart';
import '../resource/image_path.dart';
import '../widgets/text_form_field.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kThirdColor,
        body: SingleChildScrollView(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Stack(
            children: [
              BodyHeader(bgImage: kImage11),
              SubTitle(mainTitle: tForgetPassword, subTitle: tSubTitle1),
            ],
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                const TextFieldWidget(
                  text: tEmail,
                  hintText: tExampleEmail,
                ),
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
                            tSubmit,
                            style: GoogleFonts.roboto(
                                textStyle:
                                    const TextStyle(color: kColorWhite, fontSize: 20, fontWeight: FontWeight.bold)),
                          ),
                        ),
                      )),
                  TextButton(
                      onPressed: () => Get.back(),
                      child: Container(
                          height: 50,
                          width: Get.width * 0.7,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              border: Border.all(width: 2, color: kFirstColor),
                              color: Colors.transparent),
                          child: Center(
                              child: Text(
                            tCancel,
                            style: GoogleFonts.roboto(
                                textStyle:
                                    const TextStyle(color: kColorWhite, fontSize: 20, fontWeight: FontWeight.bold)),
                          ))))
                ]))
              ]))
        ])));
  }
}
