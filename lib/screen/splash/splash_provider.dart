import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SplashData {
  final String title;
  final IconData iconData;

  SplashData({
    required this.title,
    required this.iconData,
  });
}

final splashDataProvider = Provider<SplashData>((ref) {
  return SplashData(iconData: FontAwesomeIcons.starOfLife, title: 'MRDS');
});
