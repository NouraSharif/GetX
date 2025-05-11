import 'package:get/get.dart';

class HomeController extends GetxController {
  int counter = 0; //RxInt == لحتى يكون في تفاعل
  //obs == لحتى يلاحظ التغيرات==من خلاله اي تغير بتم ع المتغير الجيت اكس بستمع اله

  void increment() {
    counter++;
    update();
  }

  void decrement() {
    counter--;
    update();
  }
}
