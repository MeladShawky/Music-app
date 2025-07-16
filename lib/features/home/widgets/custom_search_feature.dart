import 'package:flutter/material.dart';
import 'package:music_app/controller/home_page_controller.dart';
import 'package:music_app/core/resources/constants_value.dart';
import 'package:music_app/core/resources/string_values.dart';
import 'package:music_app/features/home/widgets/custom_search_details.dart';
import 'package:music_app/features/home/widgets/custom_title_home_page.dart';

class CustomSearchFeature extends StatelessWidget {
  const CustomSearchFeature({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTitleHomePage(title: StringValues.searchSong),
        SizedBox(height: 22),
        CustomSearchDetails(
          songsModel: ConstantsValue.listSongs,
          itemCount: 3,
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
