import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:untitled4/config/server_config.dart';
import 'package:untitled4/config/user_information.dart';
import 'package:untitled4/models/news.dart';
import 'package:untitled4/models/pices.dart';
import 'package:untitled4/models/collections.dart';
import 'package:untitled4/modules/category/categorycontroller.dart';
class Main_home_service{
  var message;
  var url = Uri.parse(Serverconfig.domainnameserver + Serverconfig.displaylastpiece);
  var url2 = Uri.parse(Serverconfig.domainnameserver + Serverconfig.displaycollections);
  var url3 = Uri.parse(Serverconfig.domainnameserver + Serverconfig.displaylastnews);

 Future <List<Pices>> getpieces(String user_token)async{

   var response = await http.post(
       url,
          headers: {
         'auth_token':'${User_information.User_token}',
         //    'auth_token':'${User_information.Company_token }'
          },

   );
   // print(response.statusCode);
   // print(response.body);
   if(response.statusCode==200){
     print("teeeeeest for peices");
     var pices=picesFromJson(response.body);
     print(pices.length);
     return pices;

   }else{
     return[];
   }
 }
  Future <List<Collections>> getcollections(String user_token)async{
    var response = await http.post(
      url2,
      headers: {
        'auth_token':'${User_information.User_token}',
        //    'auth_token':'${User_information.Company_token }'
      },

    );
    
    if(response.statusCode==200){
      var collections=collectionsFromJson(response.body);
      return collections;

    }else{
      return[];
    }
  }

  Future <List<News>> getlastnews(String user_token)async{
    var response = await http.post(
      url3,
      headers: {
        'auth_token':'${User_information.User_token}',
        //    'auth_token':'${User_information.Company_token }'
      },

    );

    if(response.statusCode==200){
      var news=newsFromJson(response.body);
      return news;

    }else{
      return[];
    }
  }
}