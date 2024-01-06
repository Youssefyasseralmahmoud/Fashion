import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:untitled4/config/server_config.dart';
import 'package:untitled4/config/user_information.dart';
import 'package:untitled4/models/searchbox.dart';
import 'package:untitled4/models/searchkey.dart';
class Searchpage_service{
  var message;
  var url = Uri.parse(Serverconfig.domainnameserver + Serverconfig.searchbox);
  Future <List<Piece>> getsearchresult(String user_token,Searchkey key)async{
    var response = await http.post(
      url,
      headers: {
        'auth_token':'${User_information.User_token}',
        //    'auth_token':'${User_information.Company_token }'
      },
      body: {
        'query':key.searchkey,
      }

    );
    // print(response.statusCode);
    // print(response.body);
    if(response.statusCode==200){
      var searchresult=searchboxFromJson(response.body);
      return searchresult.pieces;

    }else{
      return[];
    }
  }
  Future <List<Company>> getsearchresult2(String user_token,Searchkey key)async{
    var response = await http.post(
        url,
        headers: {
          'auth_token':'${User_information.User_token}',
          //    'auth_token':'${User_information.Company_token }'
        },
        body: {
          'query':key.searchkey,
        }

    );
    // print(response.statusCode);
    // print(response.body);
    if(response.statusCode==200){
      var searchresult=searchboxFromJson(response.body);
      return searchresult.company;

    }else{
      return[];
    }
  }
  Future <List<dynamic>> getsearchresult3(String user_token,Searchkey key)async{
    var response = await http.post(
        url,
        headers: {
          'auth_token':'${User_information.User_token}',
          //    'auth_token':'${User_information.Company_token }'
        },
        body: {
          'query':key.searchkey,
        }

    );
    // print(response.statusCode);
    // print(response.body);
    if(response.statusCode==200){
      var searchresult=searchboxFromJson(response.body);
      return searchresult.expert;


    }else{
      return[];

    }
  }
}