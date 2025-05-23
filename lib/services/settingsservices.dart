import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsServices extends GetxService {
  late SharedPreferences sharedpref;
  RxInt counter = 0.obs;
  Future<SettingsServices> init() async {
    //start services
    // ignore: unused_local_variable
    sharedpref = await SharedPreferences.getInstance();
    counter.value = sharedpref.getInt("counter") ?? 0;
    //End
    return this;
  }

  increase() {
    counter.value++;
    sharedpref.setInt("counter", counter.value);
  }
}
