import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BodyHeader extends StatelessWidget {
  final String bgImage;
  const BodyHeader({super.key, required this.bgImage});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.55,
      decoration:  BoxDecoration(
        image: DecorationImage(
            image: AssetImage(bgImage),
            fit: BoxFit.cover),
      ),
    );
  }
}
