import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:untitled4/config/server_config.dart';
import 'package:untitled4/config/user_information.dart';
import 'package:untitled4/models/displayotherprofile.dart';
import 'package:untitled4/models/notification.dart';
class Notifications_service{
  var url = Uri.parse(Serverconfig.domainnameserver + Serverconfig.notification);
  Future <List<NotificationElement>> shownotification(String user_token)async{
    var response = await http.post(
      url,
      headers: {
        'auth_token':'${User_information.User_token}',
        //    'auth_token':'${User_information.Company_token }'
      },

    );
    // print(response.statusCode);
    // print(response.body);
    // var jsonresponse=jsonDecode(response.body);
    if(response.statusCode==200){
      var notification=notificationFromJson(response.body);
      return notification.notifications;

    }else{
      return[];
    }
  }

  Future <List<Displayotherprofile>> gotocompany(String user_token,int id)async{

    var response = await http.get(
      Uri.parse(Serverconfig.domainnameserver + Serverconfig.displayotherprofile+id.toString()+'/0'),
      headers: {
        'auth_token':'${User_information.User_token}',
        //    'auth_token':'${User_information.Company_token }'
      },

    );
    // print(response.statusCode);
    // print(response.body);
    if(response.statusCode==200){
      var comanyinfo=displayotherprofileFromJson(response.body);
      return comanyinfo;

    }else{
      return[];
    }
  }
}