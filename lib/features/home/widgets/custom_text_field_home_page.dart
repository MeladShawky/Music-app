import 'package:flutter/material.dart';
import 'package:music_app/core/resources/color_mangers.dart';
import 'package:music_app/core/resources/string_values.dart';

class CustomTextFieldHomePage extends StatelessWidget {
  const CustomTextFieldHomePage({super.key, required this.onTap});
  final GestureTapCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 55, right: 31, left: 31),
      child: TextField(
        onTap: onTap,
        decoration: InputDecoration(
          hintText: StringValues.searchSong,
          hintStyle: TextStyle(color: ColorMangers.kWhite),
          prefixIcon: Icon(Icons.search,color: ColorMangers.kWhite,),
          filled: true,
          fillColor: ColorMangers.kLightWhite,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50)
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50)
          ),
        ),
      ),
    );
  }
}
