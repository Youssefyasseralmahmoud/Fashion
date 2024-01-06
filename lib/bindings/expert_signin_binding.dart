import 'package:get/get.dart';
import 'package:untitled4/modules/signin/expert_signin_controller.dart';

class Expert_signin_binding implements Bindings{
  @override
  void dependencies() {
    Get.put<Expert_signincontroller>(Expert_signincontroller());
  }

}