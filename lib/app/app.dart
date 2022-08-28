
import 'package:flutter/material.dart';

import '../presentaion/resources/routes_manager.dart';
import '../presentaion/resources/theme_manager.dart';

class MyApp extends StatefulWidget {

  //named constructor
  const MyApp._initernal();

  static const MyApp _inastance=MyApp._initernal(); // singleton or Single instance

  factory MyApp()=>_inastance;

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      scrollBehavior:NoGlow(),
      theme: getApplicationTheme(),
      onGenerateRoute: RouteGenerator.getroute,
      initialRoute: Routes.loginScreen,
    );
  }
}

class NoGlow extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}