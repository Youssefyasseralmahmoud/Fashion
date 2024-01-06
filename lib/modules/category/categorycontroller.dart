// import 'package:flutter/material.dart';
// import 'package:flutter_awesome_select/flutter_awesome_select.dart';
// import 'package:get/get.dart';
import 'package:flutter_awesome_select/flutter_awesome_select.dart';
import 'package:get/get.dart';
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
import 'package:untitled4/modules/category/category_service.dart';

class Categorycontroller extends GetxController{
  var selected='Top Rated'.obs;
  var tag = 1.obs;
  var tag2 = 1.obs;
  var tag3 =1.obs;
  var tag4=1.obs;
  var value = 'black'.obs ;
  var usage=[];
 // List seasonid=[];
 // var seasonint=[0,0,0,0];
  List<int> season=[0];
  List<int> gender=[0];
  List<int> size=[0];
  List<int> color=[0];
List<String> options = ["Casual","Ethnic","Formal","Sports"];
  List<String> options3 = ["spring","summer","autumn","winter"];
  List<String> options4 = ["female","male"];
List<String> options1 = [
  'Navy Blue', 'Blue', 'Silver',
  'Black', 'Grey', 'Green','Purple',"White","Beige","Brown","Bronze","Teal","Copper","Pink","Maroon","Red","Khaki","Orange","Yellow","Charcoal"
  ,"Gold","Steel","Tan","Multi","Magenta","Lavender","Cream","Peach","Olive","Burgundy","Rust","Rose","Skin","Mauve","Metallic","Sea Green","Grey Melange","Coffee Brown"
  ,"Mustard","Taupe","Turquoise Blue","Off White","Mushroom Brown","Fluorescent Green","Nude"

];
List<String>options5=[
  'S','M','L','Xl','XXl'
];
List<String> items=["Most Expensive","Less Expensive","Top Rated"] ;
  // List<S2Choice<String>> options2 = [
  //   S2Choice<String>(value: 1.toString(), title: 'Red'),
  //   S2Choice<String>(value: 'Blue', title: 'Blue'),
  //   S2Choice<String>(value: 'Yelow', title: 'Yelow'),
  // ];

Rx<List<String>> selectedoptionlist = Rx<List<String>>([]);
var selectedoption =''.obs;
  var inside=false.obs;

  Rx<List<String>> selectedoptionlist2 = Rx<List<String>>([]);
  var selectedoption2 =''.obs;

  Rx<List<String>> selectedoptionlist3 = Rx<List<String>>([]);
  var selectedoption3 =''.obs;
  Rx<List<String>> selectedoptionlist4 = Rx<List<String>>([]);
  var selectedoption4 =''.obs;
  Rx<List<String>> selectedoptionlist5 = Rx<List<String>>([]);
  var selectedoption5 =''.obs;


  void changeinside(){
    inside(!inside.value);

  }
  List<Displaysubcategory>subcategorylist=[];
  List<Displaysubcategory>subcategorylist2=[];
  List<Displaysubcategory>subcategorylist3=[];

  List<Piecesinapparel>piecesinapparellist=[];
  List<Piecesinaccessories>piecesinaccessorieslist=[];
  List<Piecesinfootware>piecesinfootwearlist=[];
  List<Piecesforcompany>piecesincompanylist=[];
  List<Piecesforexpert>piecesinexpertlist=[];
  List<Getseason>getseasonlist=[];

  List<Displaycompaniesforfilter>allcompaniesforfillterlist=[];
  List<Displayallexpertforfilter>allexpertforfilterlist=[];
  List<Filter>filterlist=[];
  Category_service service =new Category_service();
  Future<void>showsubcategory(id)async{

    subcategorylist=await service.getsubcategory(User_information.User_token,id);
    changeinside();


  }
  Future<void>showsubcategory2(id)async{
    subcategorylist2=await service.getsubcategory2(User_information.User_token,id);
    changeinside();

  }
  Future<void>showsubcategory3(id)async{
    subcategorylist3=await service.getsubcategory3(User_information.User_token,id);
    changeinside();

  }
  Future<void>showpicesinapparel(id)async{
    piecesinapparellist=await service.getpiecesinapparel(User_information.User_token,id);
    changeinside();

  }
  Future<void>showpicesinaccessories(id)async{
    piecesinaccessorieslist=(await service.getpiecesinaccessories(User_information.User_token,id));
    changeinside();

  }
  Future<void>showpicesinfootwear(id)async{
    piecesinfootwearlist=await service.getpiecesinfootwear(User_information.User_token,id);
    changeinside();

  }
  Future<void>showpicesincompany(id)async{
    piecesincompanylist=await service.getpiecesincompany(User_information.User_token,id);
    changeinside();

  }
  Future<void>showpicesinexpert(id)async{
    piecesinexpertlist=await service.getpiecesinexpert(User_information.User_token,id);
    changeinside();

  }
  Future<void>showallcompanies()async{
    allcompaniesforfillterlist=await service.getallcompanies(User_information.User_token);
    changeinside();

  }
  Future<void>showallexpert()async{
    allexpertforfilterlist=await service.getallexpert(User_information.User_token);
    changeinside();

  }
  Future <void> onclickapply(sub,master,com_or_ex,com_or_ex_id) async{
    Filterby filterby = Filterby(season: season,gender: gender,size: size,color: color);
    print("size from controller");
    print(filterby.size);
    filterlist=await service.filter(User_information.User_token,filterby,sub,master,com_or_ex,com_or_ex_id);
    }
  // Future<void>getseson()async{
  //   getseasonlist=await service.getseason(User_information.User_token);
  //   changeinside();
  //
  // }

   //  void converttoint(){
   //   print(season);
   //   for(int i=0;i<this.season.length;i++){
   //     if(season[i]=="winter"){
   //       seasonint[i]=1;
   //     }
   //     else if(season[i]=="summer"){
   //       seasonint[i]=2;
   //     }
   //     else if(season[i]=="spring"){
   //       seasonint[i]=3;
   //     }
   //     else{
   //       seasonint[i]=4;
   //     }
   //   }
   // }

  }
