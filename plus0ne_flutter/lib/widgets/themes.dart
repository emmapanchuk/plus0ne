import 'package:flutter/material.dart';

enum ThemeKeys {DAY,NIGHT}

class Themes{
    static final ThemeData dayTheme = ThemeData(
        primaryColor: new Color(0xFFFFFFFF),
        backgroundColor: new Color(0xFF55CCFF),
        primaryIconTheme: IconThemeData(
            color: new Color(0xFFFFFFFF),
            size: 12.0,
        ),
        accentIconTheme: IconThemeData(
            color: new Color(0xFFFFAA22),
            size: 12.0,
        ),
        textTheme: TextTheme(
            title: TextStyle(
                fontSize: 36.0,
                fontWeight: FontWeight.w600,
                color: new Color(0xFF000000),
            ),
        ),
        brightness: Brightness.dark,
    );

    static final ThemeData nightTheme = ThemeData(
        primaryColor: new Color(0xFF000A23),
        brightness: Brightness.light,
    );

    static ThemeData getThemeFromKey(ThemeKeys themeKey){
        switch(themeKey){
            case ThemeKeys.DAY:
                return dayTheme;
            case ThemeKeys.NIGHT:
                return nightTheme;
            default:
                return dayTheme;
        }
    }
}