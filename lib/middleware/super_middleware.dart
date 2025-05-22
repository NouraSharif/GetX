import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/routes/route_middleware.dart';

class SuperMiddleWare extends GetMiddleware {
  @override
  int? get priority => 2;

  bool myvar = true;

  @override
  RouteSettings? redirect(String? route) {
    if (myvar) {
      return RouteSettings(name: "/super");
    }
    return null;
  }
}
