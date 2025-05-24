import 'package:get/get.dart';

class MyLocale implements Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    "ar": {"1": "الصفحة الرئيسية", "2": "العربي", "3": "الانجليزي"},
    "en": {"1": "homepage", "2": "Arabic", "3": "English"},
  };
}
