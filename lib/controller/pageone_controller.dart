import 'package:get/get.dart';

class PageOneController extends GetxController {
  String? name;
  String? age;
  String? birthday;

  @override
  void onInit() {
    name = Get.arguments['name'];
    age = Get.arguments['age'];
    birthday = Get.arguments['birthday'];
    super.onInit();
  }
}
