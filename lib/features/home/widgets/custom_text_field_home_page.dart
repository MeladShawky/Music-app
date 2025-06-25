import 'package:flutter/material.dart';
import 'package:music_app/core/resources/color_mangers.dart';

class CustomTextFieldHomePage extends StatelessWidget {
  const CustomTextFieldHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Search Song',
        hintStyle: TextStyle(color: ColorMangers.kWhite),
        prefixIcon: Icon(Icons.search,color: ColorMangers.kWhite,),
        filled: true,
        fillColor: Color(0xffB1AFE9),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50)
        ),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50)
        ),
      ),
    );
  }
}
