import 'package:flutter/material.dart';
import 'package:music_app/controller/home_page_controller.dart';
import 'package:music_app/core/resources/color_mangers.dart';
import 'package:music_app/core/resources/constants_value.dart';
import 'package:music_app/core/resources/string_values.dart';
import 'package:music_app/features/home/widgets/custom_search_details.dart';
import 'package:music_app/features/home/widgets/custom_title_home_page.dart';
import 'package:music_app/models/songsModel.dart';

class CustomSearchFeature extends StatelessWidget {
  const CustomSearchFeature({super.key, required this.listSearch});
final List<SongsModel> listSearch;
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        CustomTitleHomePage(title: StringValues.searchSong),
        SizedBox(height: 22),
        listSearch.length==0?Text('Not Found',style: TextStyle(color: ColorMangers.kWhite),):
        CustomSearchDetails(
          songsModel: listSearch,
          itemCount: listSearch.length,
          onTap: (index) {
            HomePageController.navigtorToPlayMusicScreen(
              context: context,
              index: index,
            );
          },
        ),
      ],
    );
  }
}
