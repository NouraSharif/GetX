import 'package:app1/main.dart';
import 'package:flutter/material.dart' show RouteSettings;

import 'package:get/get_navigation/get_navigation.dart';

class AuthMiddleWare extends GetMiddleware {
  @override
  int? get priority => 1;
  @override
  RouteSettings? redirect(String? route) {
    if (sharedpref!.getString("roule") == "user") {
      return RouteSettings(name: "/home");
    }
    if (sharedpref!.getString("roule") == "admin") {
      return RouteSettings(name: "/admin");
    }
    return null;
  }
}
