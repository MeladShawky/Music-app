import 'dart:async';

import 'package:flutter/material.dart';
import 'package:music_app/core/resources/routes_managers.dart';

class HomePageController{
  bool tappedOnSearchTextField=false;

  late StreamController<bool> tappedStatusSearchStreamController;
  late Sink<bool> tappedStatusSearchInputData;
  late Stream<bool> tappedStatusSearchOutputData;

  late StreamController<bool> closeStatusStreamController;
  late Sink<bool> closeStatusSearchInputData;
  late Stream<bool> closeStatusSearchOutputData;

  HomePageController(){
    tappedStatusSearchStreamController=StreamController();
    tappedStatusSearchInputData=tappedStatusSearchStreamController.sink;
    tappedStatusSearchOutputData=tappedStatusSearchStreamController.stream;
    tappedStatusSearchInputData.add(tappedOnSearchTextField);

    closeStatusStreamController=StreamController();
    closeStatusSearchInputData=closeStatusStreamController.sink;
    closeStatusSearchOutputData=closeStatusStreamController.stream;
    tappedStatusSearchInputData.add(tappedOnSearchTextField);

  }

  static void navigtorToPlayMusicScreen({required BuildContext context,required int index}){
    Navigator.pushNamed(context, RoutesName.kPlayMusicScreen,arguments: index);
  }

  static void navigtorToPop({required BuildContext context}){
    Navigator.pop(context);
  }
  void dispose(){
    tappedStatusSearchInputData.close();
    tappedStatusSearchStreamController.close();
  }
  void onTapSearchTextField(){
    tappedOnSearchTextField = true;
    tappedStatusSearchInputData.add(tappedOnSearchTextField);
    closeStatusSearchInputData.add(tappedOnSearchTextField);
  }
  void onTapOutsideSearchTextField(){
    tappedOnSearchTextField = false;
    closeStatusSearchInputData.add(tappedOnSearchTextField);
    tappedStatusSearchInputData.add(tappedOnSearchTextField);
    FocusManager.instance.primaryFocus?.unfocus();
  }
}