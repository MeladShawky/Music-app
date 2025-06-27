import 'package:flutter/material.dart';
import 'package:music_app/core/resources/color_mangers.dart';
import 'package:music_app/core/resources/font_manger.dart';
import 'package:music_app/core/resources/padding_values.dart';
import 'package:music_app/core/resources/string_values.dart';

class CustomTitleHomePage extends StatelessWidget {
  const CustomTitleHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: PaddingValues.p58, top: PaddingValues.p32),
      child: Text(
        StringValues.Search_Song,
        style: TextStyle(
          color: ColorMangers.kWhite,
          fontWeight: FontWeight.w500,
          fontSize: FontSizeManger.f18
        ),
      ),
    );
  }
}
