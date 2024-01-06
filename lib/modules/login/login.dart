import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:untitled4/modules/login/login_admin_controller.dart';
import 'package:untitled4/modules/login/login_company_controller.dart';
import 'package:untitled4/modules/login/login_expert_controller.dart';

import 'logincontroller.dart';


class Login extends StatelessWidget {

  Logincontroller controller = Get.put<Logincontroller>(Logincontroller());
  Login_company_controller controller1=Get.put<Login_company_controller>(Login_company_controller());
  //Get.find();
  Login_expert_controller controller2=Get.put<Login_expert_controller>(Login_expert_controller());
  Login_admin_controller controller3 = Get.put<Login_admin_controller>(Login_admin_controller());
  //Get.find();
  //Logincontroller controller =Get.find();
  var selected;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/fashionsignin.png"), fit: BoxFit.fill),
        ),
        // child: SingleChildScrollView(
        child: SingleChildScrollView(
          reverse: true,
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(

                padding: EdgeInsets.all(5),
                width: MediaQuery.of(context).size.width * 0.8,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border(
                      top: BorderSide(
                          width: 2, color: Colors.white.withAlpha(20)),
                      right: BorderSide(
                          width: 2, color: Colors.white.withAlpha(20)),
                      left: BorderSide(
                          width: 2, color: Colors.white.withAlpha(20)),
                      bottom: BorderSide(
                          width: 2, color: Colors.white.withAlpha(20)),
                    ),
                    color: Colors.white.withAlpha(80)),
                child: TextFormField(
                  keyboardType: TextInputType.name,
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintStyle: TextStyle(
                          color: Colors.black54, fontWeight: FontWeight.bold),
                      hintText: "Email",
                      prefixIcon: Icon(
                        Icons.email_rounded,
                        color: Colors.black,
                      )),
                  onChanged: (value){
                    controller.email=value;
                    controller1.email=value;
                    controller2.email=value;
                    controller3.email=value;
                  },
                ),
              ),
              SizedBox(height: 50),
              Container(
                padding: EdgeInsets.all(5),
                width: MediaQuery.of(context).size.width * 0.8,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border(
                      top: BorderSide(
                          width: 2, color: Colors.white.withAlpha(20)),
                      right: BorderSide(
                          width: 2, color: Colors.white.withAlpha(20)),
                      left: BorderSide(
                          width: 2, color: Colors.white.withAlpha(20)),
                      bottom: BorderSide(
                          width: 2, color: Colors.white.withAlpha(20)),
                    ),
                    color: Colors.white.withAlpha(80)),
                child: TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintStyle: TextStyle(
                          color: Colors.black54, fontWeight: FontWeight.bold),
                      hintText: "Passward",
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.black,
                      )),
                  onChanged: (value){
                    controller.password=value;
                    controller1.password=value;
                    controller2.password=value;
                    controller3.password=value;
                  },
                ),
              ),
              SizedBox(height:30),

                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     Text(
                //       "Keep Me Sign in",
                //       style: TextStyle(
                //           fontFamily: "Merriweather", color: Colors.black,fontSize: 20),
                //     ),
                //     Obx((){
                //       return Checkbox(value: controller.checkboxstatus.value, onChanged: (v) {
                //         controller.changecheckbox();
                //       },activeColor: Color.fromRGBO(77, 61, 113, 0.5843137254901961),);
                //     }
                //     ),
                //   ],
                // ),

              SizedBox(height: 65),
              Container(
                padding: EdgeInsets.all(5),
                // margin: EdgeInsets.only(bottom: 30),
                width: MediaQuery.of(context).size.width * 0.4,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color.fromRGBO(77, 61, 113, 0.5843137254901961),),
                child: MaterialButton(
                  onPressed: () {
                     loginonclick();
                  },
                  child: Text(
                    "Log in",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Dont Have an account ?",
                      style: TextStyle(color: Colors.black54, fontSize: 20)),
                  SizedBox(width: 10),
                  // TextButton(
                  // onPressed: () {
                  DropdownButton(
                      hint: Text(
                        "Sign in",
                        style: TextStyle(color: Colors.black, fontSize: 20,fontFamily: "Merriweather"),
                      ),
                      items: ["Expert", "Brand Owner", "Customer"]
                          .map((e) => DropdownMenuItem(
                                child: Text("$e"),
                                value: e,
                              ))
                          .toList(),
                      onChanged: (val) {
                        if (val == "Customer") {
                          Get.toNamed("/signin");
                        }
                        if (val == "Expert") {
                          Get.toNamed("/expert_signin");
                        }
                        if (val == "Brand Owner") {
                          Get.toNamed("/company_signin");
                        }
                      },
                      value: selected)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
  void loginonclick() async{
    EasyLoading.show(status: "Loading ..",dismissOnTap: true);
    await controller.onclicklogin();
    await controller1.onclicklogin();
    await controller2.onclicklogin();
    await controller3.onclicklogin();
    if(controller.loginstatus){
      EasyLoading.showSuccess("Done",dismissOnTap: true);
      Get.offAllNamed('/home');
    }
    else{
      EasyLoading.showError(controller.message,dismissOnTap: true);
    }

        if(controller1.loginstatus){
      EasyLoading.showSuccess("Done",dismissOnTap: true);
      Get.offAllNamed('/home');
    } else  {
        EasyLoading.showError(controller.message,dismissOnTap: true);
    }


    if(controller2.loginstatus){

      EasyLoading.showSuccess("Done",dismissOnTap: true);
      Get.offAllNamed('/home');
    }
      else {
      EasyLoading.showError(controller.message,dismissOnTap: true);
    }

    if(controller3.loginstatus){

      EasyLoading.showSuccess("Done",dismissOnTap: true);
      Get.offAllNamed('/admin_profile');
    }
    else {
      EasyLoading.showError(controller.message,dismissOnTap: true);
    }

  }
}
