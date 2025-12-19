import 'package:flutter/material.dart';
import 'package:my_first_app/home_page.dart';
import 'package:my_first_app/login_page.dart';
import 'package:my_first_app/register_page.dart';

enum RouteNames {
  homePage,
  loginPage,
  registerPage;

  String get route {
    switch (this) {
      case RouteNames.homePage:
        return "home";
      case RouteNames.loginPage:
        return "login";
      case RouteNames.registerPage:
        return "register";
    }
  }
}

var routes = <String, WidgetBuilder> {
  RouteNames.homePage.route: (_) => HomePage(),
  RouteNames.loginPage.route: (_) => LoginPage(),
  RouteNames.registerPage.route: (_) => RegisterPage("named route ashiglaw"),
};
