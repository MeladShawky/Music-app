import 'package:flutter/material.dart';

class CustomTitleOnBoardingPage extends StatelessWidget {
  const CustomTitleOnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          textAlign: TextAlign.center,
          'Find Your Favourite ',
          style: TextStyle(
            height: 1.3,
            color: Colors.white,
            fontSize: 50,
            fontWeight: FontWeight.w700,
          ),
        ),
        Text(
          textAlign: TextAlign.center,
          'Music',
          style: TextStyle(
            height: 1.3,
            color: Color(0xff80CFF2),
            fontSize: 50,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
