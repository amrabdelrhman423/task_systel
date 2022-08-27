
import 'package:flutter/material.dart';

import '../presentaion/resources/routes_manager.dart';
import '../presentaion/resources/theme_manager.dart';

class MyApp extends StatefulWidget {

  //named constructor
  MyApp._initernal();

  int appState=0;

  static final MyApp _inastance=MyApp._initernal(); // singleton or Single instance

  factory MyApp()=>_inastance;

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: getApplicationTheme(),
      onGenerateRoute: RouteGenerator.getroute,
      initialRoute: Routes.loginScreen,
    );
  }
}



// class Test extends StatelessWidget {
//   const Test({Key? key}) : super(key: key);
//
//   void updateAppState(){
//     MyApp().appState=11;
//   }
//
//   void getAppState(){
//     print(MyApp().appState);
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }
//
// class Test2 extends StatelessWidget {
//   const Test2({Key? key}) : super(key: key);
//
//   void updateAppState(){
//     MyApp().appState=11;
//   }
//
//   void getAppState(){
//     print(MyApp().appState);
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }