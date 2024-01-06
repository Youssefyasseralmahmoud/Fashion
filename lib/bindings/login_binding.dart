import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:untitled4/modules/login/login_company_controller.dart';
import 'package:untitled4/modules/login/login_expert_controller.dart';
import 'package:untitled4/modules/login/logincontroller.dart';
class Loginbinding implements Bindings{
  @override
  void dependencies() {
    // Get.lazyPut(() => Logincontroller());
    Get.put<Logincontroller>(Logincontroller());
    Get.put<Login_company_controller>(Login_company_controller());
    Get.put<Login_expert_controller>(Login_expert_controller());

  }
}