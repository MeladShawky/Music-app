import 'package:flutter/material.dart';
import 'package:music_app/core/resources/alignment_mangers.dart';
import 'package:music_app/core/resources/color_mangers.dart';
import 'package:music_app/features/on_boarding/widgets/custom_title_on_boarding_page.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(
              AlignmentMangersx.x0_20,
              AlignmentMangersy.y_0_90,
            ),
            end: Alignment(AlignmentMangersx.x_0_20, AlignmentMangersy.y0_98),
            colors: [
              ColorMangers.kPrimaryColor,
              ColorMangers.kSecandPrimaryColor.withOpacity(0.54),
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 111),
            CustomTitleOnBoardingPage(),
          ],
        ),
      ),
    );
  }
}
