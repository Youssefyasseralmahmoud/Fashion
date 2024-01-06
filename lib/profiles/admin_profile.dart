import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled4/profiles/admin_profile_controller.dart';
class Admin_profile extends StatelessWidget {

Admin_profile_controller controller=Get.put<Admin_profile_controller>(Admin_profile_controller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: Drawer(
      //
      // ),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(77, 61, 113, 0.5843137254901961),
        title:
          Text(" My Profile",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white,),)

      ),
      body:Obx((){
        controller.changeinside();
        return Container(
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
                SizedBox(height: 10,),
                //${controller.infoprofile[0]['name']}
                Center(child: Text("Youssef",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.deepPurple),),),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: (){
                      Get.toNamed("/my_information");
                    },
                    child: Container(

                      child:ListTile(
                        leading: Icon(Icons.person,color: Colors.deepPurple,size: 30,),
                        title: Text("My Informatio",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.deepPurple,fontFamily: "Merriweather"),),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                      width: MediaQuery.of(context).size.width,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[200],

                      ),
                    ),
                  ),

                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: (){
                      Get.toNamed('/about_app');
                    }
                    ,
                    child: Container(

                      child:ListTile(
                        leading: Icon(Icons.settings_applications,color: Colors.deepPurple,size: 30,),
                        title: Text("About App",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.deepPurple,fontFamily: "Merriweather"),),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                      width: MediaQuery.of(context).size.width,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[200],

                      ),
                    ),
                  ),

                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: (){
                      Get.toNamed("/my_news");
                    },
                    child: Container(

                      child:ListTile(
                        leading: Icon(Icons.post_add,color: Colors.deepPurple,size: 30,),
                        title: Text("My News",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.deepPurple,fontFamily: "Merriweather"),),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                      width: MediaQuery.of(context).size.width,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[200],

                      ),
                    ),
                  ),

                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(

                    child:ListTile(
                      leading: Icon(Icons.logout,color: Colors.deepPurple,size: 30,),
                      title: Text("Log out",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.deepPurple,fontFamily: "Merriweather"),),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                    width: MediaQuery.of(context).size.width,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[200],

                    ),
                  ),

                ),
              ],
            ),
          ),
        ) ;
      }),
    );
  }
}
