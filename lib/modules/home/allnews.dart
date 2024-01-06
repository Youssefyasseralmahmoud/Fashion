import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:untitled4/modules/category/categorycontroller.dart';
import 'package:untitled4/modules/home/allnews_controller.dart';
class Allnews extends StatelessWidget {

  Allnewscontroller controller=Get.put<Allnewscontroller>(Allnewscontroller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("All news",style: TextStyle(color: Colors.white,fontFamily: "Merriweather"),),
        backgroundColor:Color.fromRGBO(77, 61, 113, 0.5843137254901961),

      ),
      body:
     Obx((){
       controller.changeinside();
       return  ListView.builder(itemCount: controller.allnewslist.length,itemBuilder:(context,i){
         return
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Container(

               margin: EdgeInsets.only(top: 10),
               width: double.infinity,
               height: 600,
               decoration:BoxDecoration(color: Color.fromRGBO(77, 61, 113, 0.5843137254901961),border: Border.all(color: Colors.black,width: 0.5),borderRadius: BorderRadius.circular(10), ),

               child: Column(

                 children: [
                   Padding(
                       padding: const EdgeInsets.all(8.0),
                       child:ListTile(
                         leading: CircleAvatar(radius: 30,backgroundImage:AssetImage("images/fashionsignin.png") ,),
                         subtitle: Text("${controller.allnewslist[i].type}",style: TextStyle(fontSize: 20,fontFamily: "Merriweather",color: Colors.white),),
                       )

                   ),
                   Expanded(
                     child: Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: ListView(
                         shrinkWrap: true,
                         children: [
                           Container(
                             width: double.infinity,
// ${controller.allnewslist[i].details}
                             child: Padding(
                               padding: const EdgeInsets.all(8.0),
                               child: Text("${controller.allnewslist[i].details}",style: TextStyle(fontFamily: "Merriweather",fontSize: 20),),
                             ),
                           ),
                         ],
                       ),
                     ),
                   ),
                   Expanded(
                     flex: 2,
                     child:   Container(

                       width: double.infinity,
                       decoration: BoxDecoration(
                         color: Colors.grey[350],

                         borderRadius: BorderRadius.circular(10),
                         image: DecorationImage(
                           fit: BoxFit.cover,
                             image: NetworkImage(
                                 "http://10.0.2.2:8000/storage/images/fashionNewsImages/${controller
                                     .allnewslist[i].image}"),
                       ),
                     ),
                   )
                   ),
                 ],
               ),



             ),
           );
       });
     }),
    );
  }
}
