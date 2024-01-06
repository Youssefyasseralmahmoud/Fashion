// import 'package:get/get_core/src/get_main.dart';
// import 'package:get/get.dart';
// import 'package:get/get_instance/src/bindings_interface.dart';
// import 'package:get/get_instance/src/extension_instance.dart';
// import 'package:untitled4/modules/category/categorycontroller.dart';
import 'package:get/get.dart';
import 'package:untitled4/modules/category/categorycontroller.dart';

class Categorybinding implements Bindings{
  @override
  void dependencies() {
    Get.put<Categorycontroller>(Categorycontroller());
  }

}