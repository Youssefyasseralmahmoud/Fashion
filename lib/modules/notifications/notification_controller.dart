import 'package:get/get.dart';
import 'package:untitled4/config/user_information.dart';
import 'package:untitled4/models/displayotherprofile.dart';
import 'package:untitled4/models/notification.dart';
import 'package:untitled4/modules/notifications/notification_service.dart';
class Notifications_controller extends GetxController{
  var inside=false.obs;
  List<NotificationElement> notificationslist=[];
  List<Displayotherprofile> companyinfo=[];
  void changeinside(){
    inside(!inside.value);
  }
  Future<void>gotocompany(id)async{
    companyinfo=await service.gotocompany(User_information.User_token,id);
  }
  Notifications_service service=new Notifications_service();
  void onReady()async {
    notificationslist=await service.shownotification(User_information.User_token);
    changeinside();
    super.onReady();
  }
}