import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:untitled4/bindings/allnews_bindings.dart';
import 'package:untitled4/bindings/category_binding.dart';
import 'package:untitled4/bindings/company_signin_binding.dart';
import 'package:untitled4/bindings/expert_signin_binding.dart';
import 'package:untitled4/bindings/login_binding.dart';
import 'package:untitled4/bindings/main_home_binding.dart';
import 'package:untitled4/bindings/signin_binding.dart';
import 'package:untitled4/company_profile/informationCompany.dart';
import 'package:untitled4/company_profile/profileCompany.dart';
import 'package:untitled4/modules/details/descriptions.dart';
import 'package:untitled4/modules/details/detailscollections.dart';
import 'package:untitled4/modules/home/Main_Home.dart';
import 'package:untitled4/modules/home/allnews.dart';
import 'package:untitled4/modules/home/allpieces.dart';
import 'package:untitled4/modules/home/home.dart';
import 'package:untitled4/modules/home/storyview.dart';
import 'package:untitled4/modules/login/login.dart';
import 'package:untitled4/profiles/about_app.dart';
import 'package:untitled4/profiles/admin_profile.dart';
import 'package:untitled4/profiles/my_news.dart';
import 'package:untitled4/profiles/myinformation.dart';
import 'package:untitled4/userprofile/edit_profile.dart';
import 'package:untitled4/userprofile/favorite.dart';
import 'package:untitled4/userprofile/following%20brand.dart';
import 'package:untitled4/userprofile/profile.dart';
import 'modules/home/searchpage.dart';
import 'modules/notifications/notifications.dart';
import 'modules/signin/signin.dart';
import 'package:get/get.dart';
import 'package:untitled4/modules/signin/expert_signin.dart';
import 'package:untitled4/modules/signin/company_signin.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:untitled4/modules/home/Main_Home.dart';
import 'package:untitled4/modules/details/details.dart';
import 'package:untitled4/modules/details/suggestion.dart';
import 'package:untitled4/comments/comments.dart';
import 'package:untitled4/modules/category/category.dart';
import 'package:untitled4/modules/details/descriptions.dart';
import 'package:untitled4/bindings/login_binding.dart';
void main() {
  runApp(myapp());
}

class myapp extends StatefulWidget {
  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
     // home: Signin(),
      initialRoute:'/login',
       getPages: [
         GetPage(name:'/signin', page: ()=>Signin(),binding: Signinbinding()),
         GetPage(name:'/login', page: ()=>Login(),binding: Loginbinding()),
         GetPage(name:'/expert_signin', page:()=> Expert_Signin(),binding: Expert_signin_binding()),
         GetPage(name:'/company_signin', page:()=> Company_Signin(),binding: Company_signin_binding()),
         GetPage(name:'/home', page:()=> Home()),
         GetPage(name:'/main_home', page:()=> Main_Home(),binding: Main_home_binding()),
         GetPage(name:'/notifications', page:()=>Notifications()),
         GetPage(name:'/category', page:()=>Category(),binding:Categorybinding()),
         GetPage(name:'/storyview', page:()=> StoryView()),
         GetPage(name:'/details', page:()=> Details()),
         GetPage(name:'/suggestion', page:()=> Suggestion()),
         GetPage(name:'/comments', page:()=> Comments()),
         GetPage(name:'/notifications', page:()=>Notifications()),
         GetPage(name:'/descriptions', page:()=>Descriptions()),
         GetPage(name:'/allnews', page:()=>Allnews(),binding: Allnewsbindings()),
         GetPage(name:'/admin_profile', page:()=>Admin_profile()),
         GetPage(name:'/my_information', page:()=>My_information()),
         GetPage(name:'/about_app', page:()=>About_app()),
         GetPage(name:'/my_news', page:()=>My_news()),
         GetPage(name:'/search', page:()=>Searchpage()),
         GetPage(name:'/allpieces', page:()=>Allpieces()),
         GetPage(name:'/detailscollections', page:()=>Detailscollections()),
         GetPage(name:'/userprofile', page:()=>Profile()),
         GetPage(name:'/editprofile', page:()=>editProfile()),
         GetPage(name:'/favoriteitems', page:()=> FavoriteItem()),
         GetPage(name:'/following_brand', page:()=> followings()),
         GetPage(name:'/company_profile', page:()=> profileCompany()),
         GetPage(name:'/information_company', page:()=> informationCompany()),

       ],
      builder: EasyLoading.init(),
)
    ;
  }



}