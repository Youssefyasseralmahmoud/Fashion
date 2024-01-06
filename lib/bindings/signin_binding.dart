import 'package:get/get.dart';
import 'package:untitled4/modules/signin/signin_controller.dart';

class Signinbinding implements Bindings{
  @override
  void dependencies() {
    Get.put<Signincontroller>(Signincontroller());
  }

}