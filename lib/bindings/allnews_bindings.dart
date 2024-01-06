 import 'package:get/get.dart';
import 'package:untitled4/modules/home/allnews_controller.dart';
class Allnewsbindings implements Bindings{
  @override
  void dependencies() {
    Get.put<Allnewscontroller>(Allnewscontroller());
  }

}