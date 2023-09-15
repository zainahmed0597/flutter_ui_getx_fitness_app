import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../resource/colors.dart';

class TextFieldWidget extends StatelessWidget {
  final String text, hintText;
  final bool obscureText;
  // final TextEditingController controller;

  const TextFieldWidget({super.key, required this.text, required this.hintText,
    // required this.controller,
    this.obscureText = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text, style: GoogleFonts.nunitoSans(textStyle: const TextStyle(color: kFifthColor, fontSize: 18))),
        TextField(
          // controller: controller,
            obscureText: true,
            decoration: InputDecoration(
                hintText: hintText,
                enabledBorder: const UnderlineInputBorder(borderSide: BorderSide(color: kFifthColor)),
                focusedBorder: const UnderlineInputBorder(borderSide: BorderSide(color: kFifthColor)))),
        const SizedBox(height: 15),
      ],
    );
  }
}
