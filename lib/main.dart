import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:video_game_app/services/provider.dart';
import 'package:video_game_app/view/tabView.dart';

void main(List<String> args) {
  runApp(MultiProvider(
    providers: providers,
    child: const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyWidget(),
    ),
  ));
}