import 'package:flutter/material.dart';
//import 'package:flutter_appss/modules/editprofile/editProfile.dart';

import 'package:get/get.dart';
//import 'package:flutter_appss/modules/profile/components/body.dart';
import 'package:untitled4/userprofile/body.dart';
import 'package:untitled4/userprofile/profile_controller.dart';
import 'package:untitled4/userprofile/profile_menu.dart';

class Profile extends StatelessWidget {
User_profile_controller controller=Get.put<User_profile_controller>(User_profile_controller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(99, 69, 123, 1.0),
        centerTitle: true,
        title: Text(
          'Profile',
          style:
              TextStyle(fontSize: 20, color: Colors.white, letterSpacing: 0.53),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
      ),
      body: Obx((){
        controller.changeinside();
        return SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 20),
          child: Column(
            children: [
              SizedBox(
                height: 150,
                width: 150,
                child: Stack(
                  fit: StackFit.expand,
                  clipBehavior: Clip.none,
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          "http://10.0.2.2:8000/storage/images/userImages/${controller
                              .infoprofile['image']}"),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text("${controller.infoprofile['name']}",style: TextStyle(color:Color.fromRGBO(134, 83, 168, 1.0),fontFamily: "Merriweather",fontSize: 20),),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Color.fromRGBO(134, 83, 168, 1.0),
                    padding: EdgeInsets.all(20),
                    shape:
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                    backgroundColor: Color(0xFFF5F6F9),
                  ),
                  onPressed:(){
                    Get.toNamed('/editprofile');
                  },
                  child: Row(
                    children: [
                      // SvgPicture.asset(
                      //   icon,
                      //   color: Color.fromRGBO(128, 78, 139, 1.0),
                      //   width: 22,
                      // ),
                      SizedBox(width: 20),
                      Expanded(child: Text("My account")),
                      Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Color.fromRGBO(134, 83, 168, 1.0),
                    padding: EdgeInsets.all(20),
                    shape:
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                    backgroundColor: Color(0xFFF5F6F9),
                  ),
                  onPressed: (){
                    Get.toNamed("/favoriteitems");
                  },
                  child: Row(
                    children: [
                      // SvgPicture.asset(
                      //   icon,
                      //   color: Color.fromRGBO(128, 78, 139, 1.0),
                      //   width: 22,
                      // ),
                      SizedBox(width: 20),
                      Expanded(child: Text("Favorite")),
                      Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Color.fromRGBO(134, 83, 168, 1.0),
                    padding: EdgeInsets.all(20),
                    shape:
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                    backgroundColor: Color(0xFFF5F6F9),
                  ),
                  onPressed: (){
                    Get.toNamed("/following_brand");
                  },
                  child: Row(
                    children: [
                      // SvgPicture.asset(
                      //   icon,
                      //   color: Color.fromRGBO(128, 78, 139, 1.0),
                      //   width: 22,
                      // ),
                      SizedBox(width: 20),
                      Expanded(child: Text("Folloe_up_Brand")),
                      Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Color.fromRGBO(134, 83, 168, 1.0),
                    padding: EdgeInsets.all(20),
                    shape:
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                    backgroundColor: Color(0xFFF5F6F9),
                  ),
                  onPressed: (){},
                  child: Row(
                    children: [
                      // SvgPicture.asset(
                      //   icon,
                      //   color: Color.fromRGBO(128, 78, 139, 1.0),
                      //   width: 22,
                      // ),
                      SizedBox(width: 20),
                      Expanded(child: Text("Settings")),
                      Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Color.fromRGBO(134, 83, 168, 1.0),
                    padding: EdgeInsets.all(20),
                    shape:
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                    backgroundColor: Color(0xFFF5F6F9),
                  ),
                  onPressed: (){},
                  child: Row(
                    children: [
                      // SvgPicture.asset(
                      //   icon,
                      //   color: Color.fromRGBO(128, 78, 139, 1.0),
                      //   width: 22,
                      // ),
                      SizedBox(width: 20),
                      Expanded(child: Text("Log out")),
                      Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      })
    );
  }
}
