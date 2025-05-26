import 'dart:ui';
import 'package:app1/main.dart';
import 'package:get/get.dart';

class MyLocaleController extends GetxController {
  Locale initalLang =
      //  sharedpref!.getString("lang") == 'ar' ? Locale("ar") : Locale("en");
      sharedpref!.getString("lang") == null
          ? Get.deviceLocale!
          : Locale(sharedpref!.getString('lang')!);
  void changeLang(String codelang) {
    Locale locale = Locale(codelang);
    sharedpref!.setString("lang", codelang);
    Get.updateLocale(locale);
  }
}
