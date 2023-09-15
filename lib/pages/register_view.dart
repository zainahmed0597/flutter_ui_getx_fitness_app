import 'package:flutter/material.dart';
import 'package:flutter_ui_getx_fitness_app/resource/colors.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../resource/AppText.dart';
import '../resource/image_path.dart';
import '../widgets/sub_title.dart';
import '../widgets/body_header.dart';
import '../widgets/text_form_field.dart';

class RegisterView extends StatelessWidget {
  RegisterView({super.key});

  final TextEditingController name = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController phone = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController confirmPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kThirdColor,
        body: SingleChildScrollView(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Stack(
            children: [
              BodyHeader(bgImage: kImage8),
              SubTitle(mainTitle: tSignUp, subTitle: tSubTitle1),
            ],
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                formRegister(),
                Text(tSubTitle3,
                    style: GoogleFonts.nunitoSans(
                        textStyle: const TextStyle(color: kColorWhite, fontSize: 12))),
                const SizedBox(height: 20),
                Center(
                    child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
                  TextButton(
                      onPressed: () {},
                      child: Container(
                        height: 50,
                        width: Get.width * 0.7,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25), color: kFirstColor),
                        child: Center(
                          child: Text(
                            tRegister,
                            style: GoogleFonts.roboto(
                                textStyle: const TextStyle(
                                    color: kColorWhite, fontSize: 20, fontWeight: FontWeight.bold)),
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
                            tCancel,
                            style: GoogleFonts.roboto(
                                textStyle: const TextStyle(
                                    color: kColorWhite, fontSize: 20, fontWeight: FontWeight.bold)),
                          ))))
                ]))
              ]))
        ])));
  }

  Column formRegister() {
    return const Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      // Name here
      TextFieldWidget(
        text: tName,
        hintText: tFullName,
      ),

      // Email here
      TextFieldWidget(
        text: tEmail,
        hintText: tExampleEmail,
      ),

      // Phone here
      TextFieldWidget(
        text: tPhone,
        hintText: tExamplePhone,
      ),

      // Password here
      TextFieldWidget(
        text: tPassword,
        hintText: tExamplePassword,
        obscureText: true,
      ),

      // Confirm Password here
      TextFieldWidget(
        text: tConfirmPassword,
        hintText: tExampleConfirmPassword,
      ),
    ]);
  }
}
