import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled4/profiles/admin_profile_controller.dart';
class My_information extends StatelessWidget {
  Admin_profile_controller controller=Get.put<Admin_profile_controller>(Admin_profile_controller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   
      appBar: AppBar(
          backgroundColor: Color.fromRGBO(77, 61, 113, 0.5843137254901961),
          title:
          Text(" My Information",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white,fontFamily: "Merriweather"),)

      ),
      body:Container(
        child: SingleChildScrollView(
          child: Column(

            children: [
              SizedBox(height: 30,),
              Stack(
                children: [

                  Center(child: CircleAvatar(radius: 60,backgroundImage: AssetImage("images/cloth3.jpg"),)),
                  Positioned(bottom: 0,left: 230,child: CircleAvatar(backgroundColor: Colors.deepPurple,radius: 20,child: Icon(Icons.edit,color: Colors.white,),))

                ],
              ),
              SizedBox(height: 30,),
              ListTile(

                title: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Full Name",style: TextStyle(fontFamily: "Merriweather"),),
                ),
                subtitle: Text("${controller.infoprofile[0]['name']}",style: TextStyle(fontWeight: FontWeight.bold),),
                trailing: Icon(Icons.person,size: 30),
              ),
              Divider(thickness: 2,height: 0.001,),
              SizedBox(height: 30,),
              ListTile(

                title: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("E-mail",style: TextStyle(fontFamily: "Merriweather"),),
                ),
                subtitle: Text("${controller.infoprofile[0]['email']}",style: TextStyle(fontWeight: FontWeight.bold),),
                trailing: Icon(Icons.email_outlined,size: 30),
              ),
              Divider(thickness: 2,height: 0.001,),
              SizedBox(height: 30,),
              ListTile(

                title: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Password",style: TextStyle(fontFamily: "Merriweather"),),
                ),
                //${controller.infoprofile[0]['password']}
                subtitle: Text("********",style: TextStyle(fontWeight: FontWeight.bold),),
                trailing: Icon(Icons.lock,size: 30),
              ),
              Divider(thickness: 2,height: 0.001,),
              SizedBox(height: 50,),
              Container(
                padding: EdgeInsets.all(5),
                // margin: EdgeInsets.only(bottom: 30),
                width: MediaQuery.of(context).size.width * 0.8,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color.fromRGBO(77, 61, 113, 0.5843137254901961),),
                child: MaterialButton(
                  onPressed: () {

                  },
                  child: Text(
                    "Edit My information",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ) ,
    );
  }
}
