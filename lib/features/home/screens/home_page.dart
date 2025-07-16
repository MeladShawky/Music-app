import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_app/controller/home_page_controller.dart';
import 'package:music_app/core/resources/alignment_mangers.dart';
import 'package:music_app/core/resources/color_mangers.dart';
import 'package:music_app/core/resources/constants_value.dart';
import 'package:music_app/core/resources/string_values.dart';
import 'package:music_app/features/home/widgets/custom_recommanded_music_home_page.dart';

import 'package:music_app/features/home/widgets/custom_search_details.dart';
import 'package:music_app/features/home/widgets/custom_search_feature.dart';
import 'package:music_app/features/home/widgets/custom_text_field_home_page.dart';
import 'package:music_app/features/home/widgets/custom_title_home_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late HomePageController homePageController;
  @override
  void initState() {
    homePageController = HomePageController();
    super.initState();
  }

  @override
  void dispose() {
    homePageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(AlignmentMangersx.x0_20, AlignmentMangersy.y_0_90),
          end: Alignment(AlignmentMangersx.x_0_20, AlignmentMangersy.y0_98),
          colors: [ColorMangers.kPrimaryColor, ColorMangers.kDarkBlue],
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTextFieldHomePage(
              onTap: () {
                homePageController.onTapSearchTextField();
              },
              onTapClosedIcon: () {
                homePageController.onTapOutsideSearchTextField();
              },
              isSearchNow: homePageController.tappedOnSearchTextField,
              StreamCloseStatus: homePageController.closeStatusSearchOutputData,
              onSubmitted: (String value) {
                homePageController.searchAboutSong(value);
              },
            ),
            StreamBuilder(
              stream: homePageController.tappedStatusSearchOutputData,
              builder: (context, snapshot) {
                if (snapshot.data == null || snapshot.data == false) {
                  return SizedBox();
                } else {
                  return CustomSearchFeature(listSearchOutputData: homePageController.listSearchOutputDataOutputData,);
                }
              },
            ),

            CustomTitleHomePage(title: StringValues.recommandedMusic),
            CustomRecommandedMusicHomePage(
              onTap: (index) {
                HomePageController.navigtorToPlayMusicScreen(
                  context: context,
                  index: index,
                );
              },
              songsModel: ConstantsValue.listSongs,
            ),
          ],
        ),
      ),
    );
  }
}
