import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
import 'package:music_app/core/resources/constants_value.dart';

class PlayMusicController {
  late int index;
  late AudioPlayer audioPlayer;
  late AudioCache audioCache;
  late Uri uri;
  late bool isPlaying;
  late StreamController<bool> playStatusStreamController ;
  late Sink<bool> playStatusInputData ;
  late Stream<bool> playStatusOutputData ;

  late StreamController<Duration> audioTimeStreamController ;
  late Sink<Duration> audioTimeInputData ;
  late Stream<Duration> audioTimeOutputData ;
  PlayMusicController._internal(this.index){
    audioPlayer = AudioPlayer();
    audioCache = AudioCache(prefix: "");
    playStatusStreamController=StreamController();
    playStatusInputData=playStatusStreamController.sink;
    playStatusOutputData=playStatusStreamController.stream;
    playStatusOutputData=playStatusStreamController.stream.asBroadcastStream();

    audioTimeStreamController=StreamController();
    audioTimeInputData=audioTimeStreamController.sink;
    audioTimeOutputData=audioTimeStreamController.stream;
    audioTimeOutputData=audioTimeStreamController.stream.asBroadcastStream();
  }
  static PlayMusicController? instance;

  factory PlayMusicController(int index) {
    if (instance!=null ) instance!.index=index;
    instance ??= PlayMusicController._internal(index);
    return instance!;
  }
  Duration? audioTime;
  void play() async {
     uri = await audioCache.load(ConstantsValue.listSongs[index].pathSong);
     await audioPlayer.play(UrlSource(uri.toString()));
    audioTime= await audioPlayer.getDuration();
    audioTimeInputData.add(audioTime!);
    isPlaying=true;
    playStatusInputData.add(isPlaying);
  }

   void changePlayStatus(){
    if (audioPlayer.state==PlayerState.playing) {
      audioPlayer.pause();
      isPlaying=false;
    }  else if(audioPlayer.state==PlayerState.paused){
      audioPlayer.resume();
      isPlaying=true;
    }
    playStatusInputData.add(isPlaying);

  }

  void disposeAudio() {
    playStatusInputData.close();
    playStatusStreamController.close();
    // audioPlayer.dispose();
  }
}
