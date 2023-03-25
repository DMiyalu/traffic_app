import 'dart:ui';
import 'package:baadhi_team_presence/common/config/providers.dart';
import 'package:baadhi_team_presence/common/config/router.dart';
import 'package:baadhi_team_presence/common/config/themedata.dart';
import 'package:baadhi_team_presence/common/widgets/error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  DartPluginRegistrant.ensureInitialized();
  ErrorWidget.builder = (FlutterErrorDetails details) {
    bool inDebug = false;
    assert(() {
      inDebug = true;
      return true;
    }());
    if (inDebug) {
      return ErrorWidget(details.exception);
    }
    return customErrorWidget(details);
  };

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [...getProviders()],
      child: GetMaterialApp(
        title: 'Baadhi Team Presence',
        debugShowCheckedModeBanner: false,
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('fr'),
          Locale('en'),
        ],
        getPages: getPages(),
        theme: themeData(),
        initialRoute: '/',
      ),
    );
  }
}
