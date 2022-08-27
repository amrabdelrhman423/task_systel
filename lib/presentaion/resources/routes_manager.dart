import 'package:flutter/material.dart';
import 'package:task_systel/presentaion/auth/view.dart';
import 'package:task_systel/presentaion/home/view.dart';
import 'package:task_systel/presentaion/resources/strings_manager.dart';

class Routes {
  static const String loginScreen = "/";
  static const String homeScreen = "/home";
}

class RouteGenerator {
  static Route<dynamic> getroute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => AuthPage());

      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) =>  HomePage());

      default:
        return unDefinedRoute();
    }
  }

  static Route unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text(AppStrings.noRouteFound),
        ),
        body: const Center(
          child: Text(AppStrings.noRouteFound),
        ),
      ),
    );
  }
}
