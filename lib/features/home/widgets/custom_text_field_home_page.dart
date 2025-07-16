import 'package:flutter/material.dart';
import 'package:music_app/core/resources/color_mangers.dart';
import 'package:music_app/core/resources/string_values.dart';

class CustomTextFieldHomePage extends StatelessWidget {
  const CustomTextFieldHomePage({super.key, required this.onTap,  this.isSearchNow=false, required this.onTapClosedIcon,required this.StreamCloseStatus, required this.onSubmitted });
  final GestureTapCallback onTap;
  final GestureTapCallback onTapClosedIcon;
  final bool isSearchNow;
  final StreamCloseStatus;
  final ValueChanged<String> onSubmitted;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 55, right: 31, left: 31),
      child: StreamBuilder(
        stream: StreamCloseStatus,
        builder: (context, snapshot) {
          return TextField(
            onSubmitted: onSubmitted,
            onTap: onTap,
            decoration: InputDecoration(
              suffixIcon:snapshot.data==true? InkWell(onTap: onTapClosedIcon ,child: Icon(Icons.clear)):null,
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
          );
        }
      ),
    );
  }
}
