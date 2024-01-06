import 'package:http/http.dart' as http;
import 'package:untitled4/config/server_config.dart';
import 'package:untitled4/config/user_information.dart';
import 'package:untitled4/models/display_all_companies_for_filter.dart';
import 'package:untitled4/models/display_all_expert_for_filter.dart';
import 'package:untitled4/models/displaysubcategory.dart';
import 'package:untitled4/models/filter.dart';
import 'package:untitled4/models/filterby.dart';
import 'package:untitled4/models/getseason.dart';
import 'package:untitled4/models/piecesforcompany.dart';
import 'package:untitled4/models/piecesforexpert.dart';
import 'package:untitled4/models/piecesinaccessories.dart';
import 'package:untitled4/models/piecesinapparel.dart';
import 'package:untitled4/models/piecesinfootwear.dart';
class Category_service{
  Future <List<Displaysubcategory>> getsubcategory(String user_token,id)async{
    var response = await http.get(
      Uri.parse(Serverconfig.domainnameserver + Serverconfig.displaysubcategory+id.toString()),
      headers: {
        'auth_token':'${User_information.User_token}',
        //    'auth_token':'${User_information.Company_token }'
      },

    );

    if(response.statusCode==200){
      var subcategory=displaysubcategoryFromJson(response.body);

      return subcategory;

    }else{
      return[];
    }
  }
  Future <List<Displaysubcategory>> getsubcategory2(String user_token,id)async{
    var response = await http.get(
      Uri.parse(Serverconfig.domainnameserver + Serverconfig.displaysubcategory+id.toString()),
      headers: {
        'auth_token':'${User_information.User_token}',
        //    'auth_token':'${User_information.Company_token }'
      },

    );

    if(response.statusCode==200){
      var subcategory=displaysubcategoryFromJson(response.body);

      return subcategory;

    }else{
      return[];
    }
  }
  Future <List<Displaysubcategory>> getsubcategory3(String user_token,id)async{
    var response = await http.get(
      Uri.parse(Serverconfig.domainnameserver + Serverconfig.displaysubcategory+id.toString()),
      headers: {
        'auth_token':'${User_information.User_token}',
        //    'auth_token':'${User_information.Company_token }'
      },

    );

    if(response.statusCode==200){
      var subcategory=displaysubcategoryFromJson(response.body);

      return subcategory;

    }else{
      return[];
    }
  }
  Future <List<Piecesinapparel>> getpiecesinapparel(String user_token,id)async{
    var response = await http.get(
      Uri.parse(Serverconfig.domainnameserver + Serverconfig.displaypiecesinapparel+id.toString()),
      headers: {
        'auth_token':'${User_information.User_token}',
        //    'auth_token':'${User_information.Company_token }'
      },

    );

    if(response.statusCode==200){
      var piecesinapparel=piecesinapparelFromJson(response.body);
      print("teeeeeest for pices in apparel yaaaahooooo");
      print(piecesinapparel);
      return piecesinapparel;

    }else{
      return[];
    }
  }
  Future <List<Piecesinaccessories>> getpiecesinaccessories(String user_token,id)async{
    var response = await http.get(
      Uri.parse(Serverconfig.domainnameserver + Serverconfig.displaypiecesinaccessories+id.toString()),
      headers: {
        'auth_token':'${User_information.User_token}',
        //    'auth_token':'${User_information.Company_token }'
      },

    );

    if(response.statusCode==200){
      var piecesinaccessories=piecesinaccessoriesFromJson(response.body);
      print("teeeeeest for pices in accessories yaaaahooooo");
      print(piecesinaccessories);
      return piecesinaccessories;

    }else{
      return[];
    }
  }
  Future <List<Piecesinfootware>> getpiecesinfootwear(String user_token,id)async{
    var response = await http.get(
      Uri.parse(Serverconfig.domainnameserver + Serverconfig.displaypiecesinfootwear+id.toString()),
      headers: {
        'auth_token':'${User_information.User_token}',
        //    'auth_token':'${User_information.Company_token }'
      },

    );

    if(response.statusCode==200){
      var piecesinfootwear=piecesinfootwareFromJson(response.body);
      print("teeeeeest for pices in accessories yaaaahooooo");
      print(piecesinfootwear);
      return piecesinfootwear;

    }else{
      return[];
    }
  }
  Future <List<Piecesforcompany>> getpiecesincompany(String user_token,id)async{
    var response = await http.get(
      Uri.parse(Serverconfig.domainnameserver + Serverconfig.displaypiecesforcompany+id.toString()),
      headers: {
        'auth_token':'${User_information.User_token}',
        //    'auth_token':'${User_information.Company_token }'
      },

    );

    if(response.statusCode==200){
      var piecesincompany=piecesforcompanyFromJson(response.body);
      print("teeeeeest for pices in accessories yaaaahooooo");
      print(piecesincompany);
      return piecesincompany;

    }else{
      return[];
    }
  }
  Future <List<Piecesforexpert>> getpiecesinexpert(String user_token,id)async{
    var response = await http.get(
      Uri.parse(Serverconfig.domainnameserver + Serverconfig.displaypiecesforexpert+id.toString()),
      headers: {
        'auth_token':'${User_information.User_token}',
        //    'auth_token':'${User_information.Company_token }'
      },

    );

    if(response.statusCode==200){
      var piecesinexpert=piecesforexpertFromJson(response.body);
      print("teeeeeest for pices in accessories yaaaahooooo");
      print(piecesinexpert);
      return piecesinexpert;

    }else{
      return[];
    }
  }
  Future <List<Displayallexpertforfilter>> getallexpert(String user_token)async{
    var response = await http.post(
      Uri.parse(Serverconfig.domainnameserver + Serverconfig.displayallexpertforfilter),
      headers: {
        'auth_token':'${User_information.User_token}',
        //    'auth_token':'${User_information.Company_token }'
      },

    );

    if(response.statusCode==200){
      print("teeeeeest for expert in apparel yaaaahooooo");
      var allexpert=displayallexpertforfilterFromJson(response.body);

      print(allexpert);
      return allexpert;

    }else{
      return[];
    }
  }
  Future <List<Displaycompaniesforfilter>> getallcompanies(String user_token)async{
    var response = await http.post(
      Uri.parse(Serverconfig.domainnameserver + Serverconfig.displayallcompaniesforfilter),
      headers: {
        'auth_token':'${User_information.User_token}',
        //    'auth_token':'${User_information.Company_token }'
      },

    );

    if(response.statusCode==200){
      var allcompanies=displaycompaniesforfilterFromJson(response.body);
      // print("teeeeeest for pices in apparel yaaaahooooo");
      // print(piecesinapparel.data);
      return allcompanies;

    }else{
      return[];
    }
  }
  Future <List<Filter>> filter(String user_token,Filterby filterby,sub,master,com_or_ex,com_or_ex_id)async{
    print("aaaaaaaaa");
  print(sub);
    print(master);
    print(com_or_ex);
    print(com_or_ex_id);
print("body");
    print(filterby.size[0]);
    print("Size");
    print(filterby.color[0]);
    print("color");
    print(filterby.season[0]);
    print("season");
    print(filterby.gender[0]);
    print("gender");
    var response = await http.post(

      Uri.parse(Serverconfig.domainnameserver +Serverconfig.filter+'${sub}'+'/'+'${master}'+'/'+'${com_or_ex}'+'/'+'${com_or_ex_id}'),
      headers: {
        'auth_token':'${User_information.User_token}',
        //    'auth_token':'${User_information.Company_token }'
      },
      body: {
        'size[0]':'${filterby.size[0]}' ,
        'color[0]':'${filterby.color[0]}',
        'season[0]':'${filterby.season[0]}',
        'gender[0]':'${filterby.gender[0]}' ,
      },

    );

    if(response.statusCode==200){
      print("teeeeeest for filteer ");
      print(response.body);
      var filter=filterFromJson(response.body);
       print(filter);
      return filter;

    }else{
      print(response.statusCode);
      print("reeoooo");
      return[];
    }
  }
  Future <List<Getseason>> getseason(String user_token)async{
    var response = await http.post(
      Uri.parse(Serverconfig.domainnameserver + Serverconfig.getseason),
      headers: {
        'auth_token':'${User_information.User_token}',
        //    'auth_token':'${User_information.Company_token }'
      },

    );

    if(response.statusCode==200){

      var season=getseasonFromJson(response.body);

      return season;

    }else{
      return[];
    }
  }

}