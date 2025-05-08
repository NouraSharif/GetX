import 'package:get/get.dart';

class HomeController extends GetxController {
  RxInt counter = 0.obs; //RxInt == لحتى يكون في تفاعل
  //obs == لحتى يلاحظ التغيرات==من خلاله اي تغير بتم ع المتغير الجيت اكس بستمع اله

  void increment() {
    counter++;
    // update(); // == GetBuilder
  }

  void decrement() {
    counter--;
    //update(); //  == GetBuilder
  }
}
