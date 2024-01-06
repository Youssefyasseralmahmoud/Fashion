import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:multiselect/multiselect.dart';
import 'signin_controller.dart';

class Signin extends StatelessWidget {

  Signincontroller controller=Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        width: MediaQuery
            .of(context)
            .size
            .width,
        height: MediaQuery
            .of(context)
            .size
            .height,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/fashionsignin.png"),
              fit: BoxFit.fill),
        ),
        child: SingleChildScrollView(
          reverse: true,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 20),
                padding: EdgeInsets.all(5),
                width: MediaQuery
                    .of(context)
                    .size
                    .width * 0.8,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border(
                      top: BorderSide(
                          width: 2,
                          color: Colors.white.withAlpha(20)),
                      right: BorderSide(
                          width: 2,
                          color: Colors.white.withAlpha(20)),
                      left: BorderSide(
                          width: 2,
                          color: Colors.white.withAlpha(20)),
                      bottom: BorderSide(
                          width: 2,
                          color: Colors.white.withAlpha(20)),
                    ),
                    color: Colors.white.withAlpha(80)),
                child: TextFormField(
                  keyboardType: TextInputType.name,
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintStyle: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.bold),
                      hintText: "User name",
                      prefixIcon: Icon(
                        Icons.person_rounded,
                        color: Colors.black,
                      )),
                  onChanged: (value) {
                    controller.name = value;
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20),
                padding: EdgeInsets.all(5),
                width: MediaQuery
                    .of(context)
                    .size
                    .width * 0.8,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border(
                      top: BorderSide(
                          width: 2,
                          color: Colors.white.withAlpha(20)),
                      right: BorderSide(
                          width: 2,
                          color: Colors.white.withAlpha(20)),
                      left: BorderSide(
                          width: 2,
                          color: Colors.white.withAlpha(20)),
                      bottom: BorderSide(
                          width: 2,
                          color: Colors.white.withAlpha(20)),
                    ),
                    color: Colors.white.withAlpha(80)),
                child: TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintStyle: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.bold),
                      hintText: "Password",
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.black,
                      )),
                  onChanged: (value) {
                    controller.password = value;
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20),
                padding: EdgeInsets.all(5),
                width: MediaQuery
                    .of(context)
                    .size
                    .width * 0.8,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border(
                      top: BorderSide(
                          width: 2,
                          color: Colors.white.withAlpha(20)),
                      right: BorderSide(
                          width: 2,
                          color: Colors.white.withAlpha(20)),
                      left: BorderSide(
                          width: 2,
                          color: Colors.white.withAlpha(20)),
                      bottom: BorderSide(
                          width: 2,
                          color: Colors.white.withAlpha(20)),
                    ),
                    color: Colors.white.withAlpha(80)),
                child:
                    Row(children: [
                      SizedBox(width: 10,),
                      Icon(Icons.transgender_rounded),
                      SizedBox(width: 15,),
                      Obx((){
                        return   DropdownButton(
                            hint:
                            Text(
                              "Gender",
                              style: TextStyle( color: Colors.black54,
                                  fontWeight: FontWeight.bold),
                            ),

                            items: controller.genderoptions
                                .map((e) => DropdownMenuItem(
                              child: Text("$e"),
                              value: e,
                            )
                            )
                                .toList(),
                            onChanged: (val) {
                              controller.gender=val.toString();
                              controller.selected.value=val.toString();
                            },
                            value: controller.selected.value
                        );
                      })

                    ],)



              ),
              Container(
                margin: EdgeInsets.only(bottom: 20),
                padding: EdgeInsets.all(5),
                width: MediaQuery
                    .of(context)
                    .size
                    .width * 0.8,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border(
                      top: BorderSide(
                          width: 2,
                          color: Colors.white.withAlpha(20)),
                      right: BorderSide(
                          width: 2,
                          color: Colors.white.withAlpha(20)),
                      left: BorderSide(
                          width: 2,
                          color: Colors.white.withAlpha(20)),
                      bottom: BorderSide(
                          width: 2,
                          color: Colors.white.withAlpha(20)),
                    ),
                    color: Colors.white.withAlpha(80)),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintStyle: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.bold),
                      hintText: " Email",
                      prefixIcon: Icon(
                        Icons.email_outlined,
                        color: Colors.black,
                      )),
                  onChanged: (value) {
                    controller.email = value;
                  },
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.only(bottom: 30, top: 100),
                width: MediaQuery
                    .of(context)
                    .size
                    .width * 0.4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color.fromRGBO(77, 61, 113, 0.5843137254901961),),
                child: MaterialButton(
                  onPressed: () {
                    signinonclick();
                  },
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  void signinonclick() async{
    EasyLoading.show(status: "Loading ..",dismissOnTap: true);
    await controller.onclicksignin();
    if(controller.signinstatus){
      EasyLoading.showSuccess(controller.message,dismissOnTap: true);
      Get.toNamed('/home');
    }else{
      EasyLoading.showError(controller.message,dismissOnTap: true);
    }
  }
}
