import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:untitled4/config/server_config.dart';
import 'package:untitled4/config/user_information.dart';
import 'package:untitled4/models/block_companies.dart';
import 'package:untitled4/models/block_expert.dart';
import 'package:untitled4/models/show_companies.dart';
import 'package:untitled4/models/show_experts.dart';
class About_app_service{
var message;
  var url = Uri.parse(Serverconfig.domainnameserver + Serverconfig.count_company);
  var url2 = Uri.parse(Serverconfig.domainnameserver + Serverconfig.count_expert);
  var url3 = Uri.parse(Serverconfig.domainnameserver + Serverconfig.count_user);
  var url4 = Uri.parse(Serverconfig.domainnameserver + Serverconfig.count_block_expert);
  var url5= Uri.parse(Serverconfig.domainnameserver + Serverconfig.count_block_company);
  var url6= Uri.parse(Serverconfig.domainnameserver + Serverconfig. show_company);
  var url7= Uri.parse(Serverconfig.domainnameserver + Serverconfig. show_expert);
  var url8= Uri.parse(Serverconfig.domainnameserver + Serverconfig. get_block_company);
  var url9= Uri.parse(Serverconfig.domainnameserver + Serverconfig. get_block_expert);
  Future <List<Companies>> showcompanies(String user_token)async{
    var response = await http.post(
      url6,
      headers: {
        'auth_token':'${User_information.Admin_token}',
        //    'auth_token':'${User_information.Company_token }'
      },

    );
    // print(response.statusCode);
    // print(response.body);
    if(response.statusCode==200){
      var copmanies=companiesFromJson(response.body);
      return copmanies;

    }else{
      return[];
    }
  }
  Future <List<Experts>> showexperts(String user_token)async{
    var response = await http.post(
      url7,
      headers: {
        'auth_token':'${User_information.Admin_token}',
        //    'auth_token':'${User_information.Company_token }'
      },

    );
    // print(response.statusCode);
    // print(response.body);
    if(response.statusCode==200){
      var experts=expertsFromJson(response.body);
      return experts;

    }else{
      return[];
    }
  }
  Future <List<BlockCompanies>> showblockcompanies(String user_token)async{
    var response = await http.post(
      url8,
      headers: {
        'auth_token':'${User_information.Admin_token}',
        //    'auth_token':'${User_information.Company_token }'
      },

    );
    // print(response.statusCode);
    // print(response.body);
    if(response.statusCode==200){
      var blockcopmanies=blockCompaniesFromJson(response.body);
      return blockcopmanies;

    }else{
      return[];
    }
  }
  Future <List<BlockExpert>> showblockexpert(String user_token)async{
    var response = await http.post(
      url9,
      headers: {
        'auth_token':'${User_information.Admin_token}',
        //    'auth_token':'${User_information.Company_token }'
      },

    );
    // print(response.statusCode);
    // print(response.body);
    if(response.statusCode==200){
      var blockexpert=blockExpertFromJson(response.body);
      return blockexpert;

    }else{
      return[];
    }
  }
  Future <int> getcountcompany(String user_token)async{
    var response = await http.post(
      url,
      headers: {
        'auth_token':'${User_information.Admin_token}',
        //    'auth_token':'${User_information.Company_token }'
      },

    );

    if(response.statusCode==200){
      var jsonresponse=jsonDecode(response.body);
      return jsonresponse;

    }else{
      return 0;
    }
  }
  Future <int> getcountexpert(String user_token)async{
    var response = await http.post(
      url2,
      headers: {
        'auth_token':'${User_information.Admin_token}',
        //    'auth_token':'${User_information.Company_token }'
      },

    );

    if(response.statusCode==200){
      var jsonresponse=jsonDecode(response.body);
      return jsonresponse;

    }else{
      return 0;
    }
  }
  Future <int> getcountuser(String user_token)async{
    var response = await http.post(
      url3,
      headers: {
        'auth_token':'${User_information.Admin_token}',
        //    'auth_token':'${User_information.Company_token }'
      },

    );

    if(response.statusCode==200){
      var jsonresponse=jsonDecode(response.body);
      return jsonresponse;

    }else{
      return 0;
    }
  }
  Future <int> getcountblockexpert(String user_token)async{
    var response = await http.post(
      url4,
      headers: {
        'auth_token':'${User_information.Admin_token}',
        //    'auth_token':'${User_information.Company_token }'
      },

    );

    if(response.statusCode==200){
      var jsonresponse=jsonDecode(response.body);
      return jsonresponse;

    }else{
      return 0;
    }
  }
  Future <int> getcountblockcompany(String user_token)async{
    var response = await http.post(
      url5,
      headers: {
        'auth_token':'${User_information.Admin_token}',
        //    'auth_token':'${User_information.Company_token }'
      },

    );

    if(response.statusCode==200){
      var jsonresponse=jsonDecode(response.body);
      return jsonresponse;

    }else{
      return 0;
    }
  }
  Future <bool> blockcompany(String user_token,int id)async{
    var response = await http.get(
      Uri.parse(Serverconfig.domainnameserver + Serverconfig.blockcompany+id.toString()),
      headers: {
        'auth_token':'${User_information.Admin_token}',

      },

    );
    // print(response.statusCode);
    // print(response.body);
    var jsonresponse=jsonDecode(response.body);
    if(jsonresponse['status']==true){
      message=jsonresponse['message'];
      return true;

    }else if(jsonresponse['status']==false){
      message=jsonresponse['message'];
      return false;
    }else{
      message='server error';
      return false;
    }
  }
Future <bool> blockexpert(String user_token,int id)async{
  var response = await http.get(
    Uri.parse(Serverconfig.domainnameserver + Serverconfig.blockexpert+id.toString()),
    headers: {
      'auth_token':'${User_information.Admin_token}',

    },

  );
  // print(response.statusCode);
  // print(response.body);
  var jsonresponse=jsonDecode(response.body);
  if(jsonresponse['status']==true){
    message=jsonresponse['message'];
    return true;

  }else if(jsonresponse['status']==false){
    message=jsonresponse['message'];
    return false;
  }else{
    message='server error';
    return false;
  }
}
Future <bool> unblockcompany(String user_token,int id)async{
  var response = await http.get(
    Uri.parse(Serverconfig.domainnameserver + Serverconfig.cancleblockcompany+id.toString()),
    headers: {
      'auth_token':'${User_information.Admin_token}',

    },

  );
  // print(response.statusCode);
  // print(response.body);
  var jsonresponse=jsonDecode(response.body);
  if(jsonresponse['status']==true){
    message=jsonresponse['message'];
    return true;

  }else if(jsonresponse['status']==false){
    message=jsonresponse['message'];
    return false;
  }else{
    message='server error';
    return false;
  }
}
Future <bool> unblockexpert(String user_token,int id)async{
  var response = await http.get(
    Uri.parse(Serverconfig.domainnameserver + Serverconfig.cancleblockexpert+id.toString()),
    headers: {
      'auth_token':'${User_information.Admin_token}',

    },

  );
  // print(response.statusCode);
  // print(response.body);
  var jsonresponse=jsonDecode(response.body);
  if(jsonresponse['status']==true){
    message=jsonresponse['message'];
    return true;

  }else if(jsonresponse['status']==false){
    message=jsonresponse['message'];
    return false;
  }else{
    message='server error';
    return false;
  }
}
}