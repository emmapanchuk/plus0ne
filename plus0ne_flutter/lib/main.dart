import 'package:flutter/material.dart';
import 'package:plus0ne/widgets/createEvent.dart';
import 'package:plus0ne/widgets/themes.dart';

void main() {
  runApp(MaterialApp(
    theme: Themes.getThemeFromKey(ThemeKeys.DAY),
    home: CreateEvent(),
  ));
}