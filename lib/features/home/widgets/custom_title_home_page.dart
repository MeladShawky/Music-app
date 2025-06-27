import 'package:flutter/material.dart';
import 'package:music_app/core/resources/color_mangers.dart';
import 'package:music_app/core/resources/font_manger.dart';
import 'package:music_app/core/resources/padding_values.dart';

class CustomTitleHomePage extends StatelessWidget {
  const CustomTitleHomePage({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: PaddingValues.p34,
        top: PaddingValues.p32,
      ),
      child: Text(
        title,
        style: TextStyle(
          color: ColorMangers.kWhite,
          fontWeight: FontWeight.w500,
          fontSize: FontSizeManger.f18,
        ),
      ),
    );
  }
}
