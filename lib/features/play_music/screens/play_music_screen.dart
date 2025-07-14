import 'package:flutter/material.dart';
import 'package:music_app/controller/home_page_controller.dart';
import 'package:music_app/controller/play_music%20controller.dart';
import 'package:music_app/core/resources/alignment_mangers.dart';
import 'package:music_app/core/resources/color_mangers.dart';
import 'package:music_app/core/resources/constants_value.dart';
import 'package:music_app/core/resources/height_values_mangers.dart';
import 'package:music_app/features/play_music/widgets/custom_app_bar_play_music_screen.dart';
import 'package:music_app/features/play_music/widgets/custom_button_controller_play_music.dart';
import 'package:music_app/features/play_music/widgets/custom_songs_detail_play_music.dart';
import 'package:music_app/features/play_music/widgets/custom_tools2_play_music.dart';
import 'package:music_app/features/play_music/widgets/custom_tools_play_music.dart';

class PlayMusicScreen extends StatefulWidget {
  const PlayMusicScreen({super.key});

  @override
  State<PlayMusicScreen> createState() => _PlayMusicScreenState();
}

class _PlayMusicScreenState extends State<PlayMusicScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  late int index;
  late PlayMusicController _PlayMusicController;
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    index = ModalRoute.of(context)!.settings.arguments as int;

    _PlayMusicController = PlayMusicController(index);
    // _PlayMusicController.play();
  }

  @override
  void dispose() {
    // _PlayMusicController.disposeAudio();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CustomAppBarPlayMusicScreen(
        onPressed: () {
          HomePageController.navigtorToPop(context: context);
        },
      ),
      body: FutureBuilder(
        future: _PlayMusicController.play(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.connectionState == ConnectionState.done) {
            return Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(
                    AlignmentMangersx.x0_20,
                    AlignmentMangersy.y_0_90,
                  ),
                  end: Alignment(
                    AlignmentMangersx.x_0_20,
                    AlignmentMangersy.y0_98,
                  ),
                  colors: [ColorMangers.kPrimaryColor, ColorMangers.kDarkBlue],
                ),
              ),
              child: SafeArea(
                child: SizedBox(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Spacer(),
                      StreamBuilder(
                        stream: _PlayMusicController.detailsOutputData,
                        builder: (context, snapshot) {
                          return CustomSongsDetailPlayMusic(
                            songsModel: ConstantsValue.listSongs[snapshot.data ?? index],
                          );
                        }
                      ),
                      SizedBox(height: HeightValuesMangers.h28),
                      CustomButtonControllerPlayMusic(
                        onChanged: (double value) {
                          _PlayMusicController.onChangedThumbSlider(value);
                        },
                        onStop: () {
                          _PlayMusicController.changePlayStatus();
                        },
                        playStatusOutputData:
                            _PlayMusicController.playStatusOutputData,
                        audioTime:
                            _PlayMusicController.trasferDurationToMinuetAndSecond(
                              snapshot.data,
                            ),
                        durationNowOutputData:
                            _PlayMusicController.durationNowOutputData,
                        sliderValueOutputData:
                            _PlayMusicController.sliderValueNowOutputData, 
                        onTapNext: () {
                          _PlayMusicController.onNextTap();
                      }, 
                        onTapback: () {
                          _PlayMusicController.onBackTap();
                        }, onTapLoop: () {
                        _PlayMusicController.onTapLoop();
                      },
                        loopStatusOutputData: _PlayMusicController.loopStatusOutputData,
                      ),
                      CustomToolsPlayMusic(),
                      CustomTools2PlayMusic(),
                      SizedBox(height: HeightValuesMangers.h11),
                    ],
                  ), 
                ),
              ),
            );
          } else {
            return Text('erroe');
          }
        },
      ),
    );
  }
}
