import 'package:flutter/material.dart';
import 'package:music_app/core/resources/alignment_mangers.dart';
import 'package:music_app/core/resources/color_mangers.dart';
import 'package:music_app/features/home/widgets/custom_text_field_home_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(AlignmentMangersx.x0_20, AlignmentMangersy.y_0_90),
          end: Alignment(AlignmentMangersx.x_0_20, AlignmentMangersy.y0_98),
          colors: [ColorMangers.kPrimaryColor, ColorMangers.kDarkBlue],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 55, right: 31, left: 31),
        child: Column(
          children: [
            CustomTextFieldHomePage(),
          ],
        ),
      ),
    );
  }
}
