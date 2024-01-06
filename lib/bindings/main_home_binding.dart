import 'package:get/get.dart';
import 'package:untitled4/modules/home/main_home_controller.dart';

class Main_home_binding implements Bindings{
  @override
  void dependencies() {
  Get.put<Main_home_controller>(Main_home_controller());
  }

}