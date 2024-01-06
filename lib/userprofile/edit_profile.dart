import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
//import 'package:intl/intl.dart';
import 'package:get/get.dart';
import 'package:untitled4/userprofile/edit_profile_controller.dart';
import 'dart:io';

import 'package:untitled4/userprofile/profile_controller.dart';
//import 'package:image_picker/image_picker.dart';
//import 'package:image_picker/image_picker.dart';

//import 'package:flutter_settings_ui/flutter_settings_ui.dart';
class editProfile extends StatefulWidget {


  @override
  _editProfileState createState() => _editProfileState();
}

class _editProfileState extends State<editProfile> {
  User_profile_controller controller=Get.put<User_profile_controller>(User_profile_controller());
  Editprofile_controller controller2=Get.put<Editprofile_controller>(Editprofile_controller());
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    final _data=TextEditingController();
    final _data1=TextEditingController();
    final _data2=TextEditingController();
    final _data3=TextEditingController();
    final _data4=TextEditingController();
    final _data5=TextEditingController();
    final _data6=TextEditingController();
    final _data7=TextEditingController();
    final _data8=TextEditingController();
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.toNamed('/profile');
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Color.fromRGBO(70, 52, 97, 1.0),

          ),
        ),
        title: Text(
          'Profile',
          style: TextStyle(fontSize: 25),
        ),
        toolbarHeight: MediaQuery.of(context).size.height / 10,
        backgroundColor: Color.fromRGBO(196, 176, 222, 0.8352941176470589),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 16, top: 25, right: 16),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: ListView(
            children: [
              SizedBox(
                height: 1,
              ),
              Center(
                child: Stack(
                  children: [
                    Container(
                      width: 130,
                      height: 130,
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 4,
                              color: Theme.of(context).scaffoldBackgroundColor),
                          boxShadow: [
                            BoxShadow(
                                spreadRadius: 2,
                                blurRadius: 10,
                                color: Colors.black.withOpacity(0.1),
                                offset: Offset(0, 10))
                          ],
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  "http://10.0.2.2:8000/storage/images/userImages/${controller
                                      .infoprofile['image']}"))),
                    ),
                    Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 4,
                              color: Theme.of(context).scaffoldBackgroundColor,
                            ),
                            color:
                            Color.fromRGBO(63, 42, 88, 0.4666666666666667),
                          ),
                          child: Center(
                            child: IconButton(
                              icon: new Icon(Icons.edit),
                              onPressed: () {},
                              color: Colors.white,
                            ),
                          ),
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 35,
              ),
            Padding(
              padding: const EdgeInsets.only(bottom: 35.0),
              child: TextField(
                controller: _data,
                onChanged: (value){
                  controller2.name=value;
                },
               // obscureText: isPasswordTextField ? showPassword : false,
                decoration: InputDecoration(
                    // suffixIcon: isPasswordTextField
                    //     ? IconButton(
                    //   onPressed: () {},
                    //   icon: Icon(
                    //     Icons.remove_red_eye,
                    //     color: Colors.grey,
                    //   ),
                    // )
                       // : null,
                    contentPadding: EdgeInsets.only(bottom: 3),
                    labelText: "Full Name",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    hintText: "${controller.infoprofile['name']}",
                    hintStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    )),
              ),
            ),
             // buildTextField("Full Name", "${controller.infoprofile['name']}", false),
              Padding(
                padding: const EdgeInsets.only(bottom: 35.0),
                child: TextField(
                  controller: _data1,
                  onChanged: (value){
                    controller2.email=value;

                  },
                  // obscureText: isPasswordTextField ? showPassword : false,
                  decoration: InputDecoration(
                    // suffixIcon: isPasswordTextField
                    //     ? IconButton(
                    //   onPressed: () {},
                    //   icon: Icon(
                    //     Icons.remove_red_eye,
                    //     color: Colors.grey,
                    //   ),
                    // )
                    // : null,
                      contentPadding: EdgeInsets.only(bottom: 3),
                      labelText: "E-mail",
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      hintText: "${controller.infoprofile['email']}",
                      hintStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      )),
                ),
              ),
            //  buildTextField("E-mail", "${controller.infoprofile['email']}", false),
              Padding(
                padding: const EdgeInsets.only(bottom: 35.0),
                child: TextField(
                  controller: _data2,
                  onChanged: (value){
                    controller2.password=value;
                  },
                  // obscureText: isPasswordTextField ? showPassword : false,
                  decoration: InputDecoration(
                    // suffixIcon: isPasswordTextField
                    //     ? IconButton(
                    //   onPressed: () {},
                    //   icon: Icon(
                    //     Icons.remove_red_eye,
                    //     color: Colors.grey,
                    //   ),
                    // )
                    // : null,
                      contentPadding: EdgeInsets.only(bottom: 3),
                      labelText: "Password",
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      hintText: "*********",
                      hintStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      )),
                ),
              ),
             // buildTextField("Password", "********", true),
              Padding(
                padding: const EdgeInsets.only(bottom: 35.0),
                child: TextField(
                  controller: _data3,
                  onChanged: (value){
                    controller2.weight=int.parse(value) ;

                  },
                  // obscureText: isPasswordTextField ? showPassword : false,
                  decoration: InputDecoration(
                    // suffixIcon: isPasswordTextField
                    //     ? IconButton(
                    //   onPressed: () {},
                    //   icon: Icon(
                    //     Icons.remove_red_eye,
                    //     color: Colors.grey,
                    //   ),
                    // )
                    // : null,
                      contentPadding: EdgeInsets.only(bottom: 3),
                      labelText: "weight",
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      hintText: "${controller.infoprofile['weight']}",
                      hintStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      )),
                ),
              ),
            //  buildTextField("weight", "${controller.infoprofile['weight']}", false),
              Padding(
                padding: const EdgeInsets.only(bottom: 35.0),
                child: TextField(
                  controller: _data4,
                  onChanged: (value){
                    controller2.length=int.parse(value) ;

                  },
                  // obscureText: isPasswordTextField ? showPassword : false,
                  decoration: InputDecoration(
                    // suffixIcon: isPasswordTextField
                    //     ? IconButton(
                    //   onPressed: () {},
                    //   icon: Icon(
                    //     Icons.remove_red_eye,
                    //     color: Colors.grey,
                    //   ),
                    // )
                    // : null,
                      contentPadding: EdgeInsets.only(bottom: 3),
                      labelText: "length",
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      hintText: "${controller.infoprofile['length']}",
                      hintStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      )),
                ),
              ),
             // buildTextField("length", "${controller.infoprofile['length']}", false),
              Padding(
                padding: const EdgeInsets.only(bottom: 35.0),
                child: TextField(
                  controller: _data5,
                  onChanged: (value){
                    controller2.prefercolor=value ;

                  },
                  // obscureText: isPasswordTextField ? showPassword : false,
                  decoration: InputDecoration(
                    // suffixIcon: isPasswordTextField
                    //     ? IconButton(
                    //   onPressed: () {},
                    //   icon: Icon(
                    //     Icons.remove_red_eye,
                    //     color: Colors.grey,
                    //   ),
                    // )
                    // : null,
                      contentPadding: EdgeInsets.only(bottom: 3),
                      labelText: "prefer color",
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      hintText: "${controller.infoprofile['prefered_color']}",
                      hintStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 35.0),
                child: TextField(
                  controller: _data6,
                  onChanged: (value){
                    controller2.gendeinstring=value ;

                  },
                  // obscureText: isPasswordTextField ? showPassword : false,
                  decoration: InputDecoration(
                    // suffixIcon: isPasswordTextField
                    //     ? IconButton(
                    //   onPressed: () {},
                    //   icon: Icon(
                    //     Icons.remove_red_eye,
                    //     color: Colors.grey,
                    //   ),
                    // )
                    // : null,
                      contentPadding: EdgeInsets.only(bottom: 3),
                      labelText: "gender",
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      hintText: "${controller.infoprofile['gender']}",
                      hintStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 35.0),
                child: TextField(
                  controller: _data7,
                  onChanged: (value){
                    controller2.preferstyle=value ;

                  },
                  // obscureText: isPasswordTextField ? showPassword : false,
                  decoration: InputDecoration(
                    // suffixIcon: isPasswordTextField
                    //     ? IconButton(
                    //   onPressed: () {},
                    //   icon: Icon(
                    //     Icons.remove_red_eye,
                    //     color: Colors.grey,
                    //   ),
                    // )
                    // : null,
                      contentPadding: EdgeInsets.only(bottom: 3),
                      labelText: "prefer style",
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      hintText: "${controller.infoprofile['prefered_style']}",
                      hintStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 35.0),
                child: TextField(
                  controller: _data8,
                  onChanged: (value){
                    controller2.details=value ;

                  },
                  // obscureText: isPasswordTextField ? showPassword : false,
                  decoration: InputDecoration(
                    // suffixIcon: isPasswordTextField
                    //     ? IconButton(
                    //   onPressed: () {},
                    //   icon: Icon(
                    //     Icons.remove_red_eye,
                    //     color: Colors.grey,
                    //   ),
                    // )
                    // : null,
                      contentPadding: EdgeInsets.only(bottom: 3),
                      labelText: "details",
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      hintText: "${controller.infoprofile['details']}",
                      hintStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      )),
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.only(bottom: 35.0),
              //   child: TextField(
              //     onChanged: (value){
              //       controller2.birthdate=DateTime.parse(value) ;
              //       print(controller2.birthdate);
              //     },
              //     // obscureText: isPasswordTextField ? showPassword : false,
              //     decoration: InputDecoration(
              //       // suffixIcon: isPasswordTextField
              //       //     ? IconButton(
              //       //   onPressed: () {},
              //       //   icon: Icon(
              //       //     Icons.remove_red_eye,
              //       //     color: Colors.grey,
              //       //   ),
              //       // )
              //       // : null,
              //         contentPadding: EdgeInsets.only(bottom: 3),
              //         labelText: "date of birth",
              //         floatingLabelBehavior: FloatingLabelBehavior.always,
              //         hintText: "${controller.infoprofile['date_of_birth']}",
              //         hintStyle: TextStyle(
              //           fontSize: 16,
              //           fontWeight: FontWeight.bold,
              //           color: Colors.black,
              //         )),
              //   ),
              // ),
            //  buildTextField("prefer color", "${controller.infoprofile['prefered_color']}", false),
              SizedBox(
                height: 35,
              ),
              ButtonBar(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  // RaisedButton(
                  //   child: Text('Save'),
                  //   color: Color.fromRGBO(63, 42, 88, 0.4666666666666667),
                  //   padding: EdgeInsets.all(20),
                  //   onPressed: () {
                  //     onclicksave();
                  //     Get.toNamed('/profile');
                  //   },
                  // ),
                  SizedBox(
                    height: 35,
                  ),
                  // FlatButton(
                  //   child: Text('Cansel'),
                  //   color: Color.fromRGBO(142, 105, 186, 0.4666666666666667),
                  //   onPressed: () {
                  //     Get.toNamed('/profile');
                  //   },
                  //   padding: EdgeInsets.all(20),
                  // ),
                ],
              ),
              SizedBox(
                height: 35,
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Widget buildTextField(
  //     String labelText, String placeholder, bool isPasswordTextField) {
  //   return Padding(
  //     padding: const EdgeInsets.only(bottom: 35.0),
  //     child: TextField(
  //       onChanged: (value){
  //         controller2.name=value;
  //       },
  //       obscureText: isPasswordTextField ? showPassword : false,
  //       decoration: InputDecoration(
  //           suffixIcon: isPasswordTextField
  //               ? IconButton(
  //             onPressed: () {},
  //             icon: Icon(
  //               Icons.remove_red_eye,
  //               color: Colors.grey,
  //             ),
  //           )
  //               : null,
  //           contentPadding: EdgeInsets.only(bottom: 3),
  //           labelText: labelText,
  //           floatingLabelBehavior: FloatingLabelBehavior.always,
  //           hintText: placeholder,
  //           hintStyle: TextStyle(
  //             fontSize: 16,
  //             fontWeight: FontWeight.bold,
  //             color: Colors.black,
  //           )),
  //     ),
  //     );
  // }
  void onclicksave() async{
    EasyLoading.show(status: "Loading ..",dismissOnTap: true);
    await controller2.onclick();
    if(controller2.editstatus){
      EasyLoading.showSuccess(controller2.message,dismissOnTap: true);
      Get.toNamed('/editprofile');
    }
    else{
      EasyLoading.showError(controller2.message,dismissOnTap: true);
      Get.toNamed('/editprofile');
    }

  }
}


