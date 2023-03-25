import 'package:flutter/material.dart';

final ThemeData theme = ThemeData(
  fontFamily: 'Twitterchirp',
  primarySwatch: Colors.grey,
);

ThemeData themeData() {
  return theme.copyWith(
    colorScheme: theme.colorScheme.copyWith(
      primary: Colors.blueAccent,
      primaryContainer: Colors.transparent,
      secondary: Colors.black,
      secondaryContainer: Colors.black,
      background: Colors.white,
      tertiary: Colors.grey[600],
    ),
    scaffoldBackgroundColor: Colors.white,
    canvasColor: Colors.white,
    textTheme: TextTheme(
        bodyText1: TextStyle(
      color: Colors.black87.withOpacity(.9),
    )),
  );
}
