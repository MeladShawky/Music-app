import 'package:audioplayers/audioplayers.dart';
import 'package:music_app/core/resources/constants_value.dart';

class PlayMusicController {
  late int index;
  late AudioPlayer audioPlayer;
  late AudioCache audioCache;
  late Uri uri;

  PlayMusicController._internal(this.index){
    audioPlayer = AudioPlayer();
    audioCache = AudioCache(prefix: "");
  }
  static PlayMusicController? instance;

  factory PlayMusicController(int index) {

    instance ??= PlayMusicController._internal(index);
    return instance!;
  }

  void play() async {
    uri = await audioCache.load(ConstantsValue.listSongs[index].pathSong);
    audioPlayer.play(UrlSource(uri.toString()));
  }

   void stopAudio(){
    if (audioPlayer.state==PlayerState.playing) {
      audioPlayer.pause();
    }  else if(audioPlayer.state==PlayerState.paused){
      audioPlayer.resume();
    }

  }

  // void disposeAudio() {
  //   audioPlayer.dispose();
  // }
}
