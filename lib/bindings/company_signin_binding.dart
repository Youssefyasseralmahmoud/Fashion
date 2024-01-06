import 'package:get/get.dart';
import 'package:untitled4/modules/signin/company_signin_controller.dart';
class Company_signin_binding implements Bindings{
  @override
  void dependencies() {
    Get.put<Company_signin_controller>(Company_signin_controller());
  }

}