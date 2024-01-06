import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:untitled4/config/user_information.dart';


import 'dart:io';

import 'dart:async';

import 'package:untitled4/profiles/my_news_controller.dart';
import 'dart:convert';
class My_news extends StatelessWidget {
  /// File? pickedFile;
  ///ImagePicker imagePicker = ImagePicker();
  My_news_controller controller= Get.put<My_news_controller>(My_news_controller());
  //late File imagefile;
  // Future imagefromgalary(BuildContext context)async{
  //   var image =await ImagePicker.pickImage(source: ImageSource.camera);
  //   imagefile=image;
  // }
_showchoice(BuildContext context,int id){
  return showDialog(context: context, builder:(context)=> AlertDialog(
    title: Center(child: Text("Are You Sure ?",style: TextStyle(fontFamily: "Merriweather"),)),
    content: SingleChildScrollView(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: GestureDetector(

              onTap: (){

                 delete(context,id);
              },
              child: Container(
                width: 60,
                height: 30,
                child: Center(child: Icon(Icons.check_sharp),),
                decoration:BoxDecoration(color: Color.fromRGBO(77, 61, 113, 0.5843137254901961),borderRadius: BorderRadius.circular(10)),
              ),
            ),
          ),
          SizedBox(width: 30,),
          Center(
            child: GestureDetector(
              onTap: (){
            Navigator.pop(context);

              },
              child: Container(
                width: 60,
                height: 30,
                child: Center(child: Icon(Icons.clear),),
                decoration:BoxDecoration(color: Color.fromRGBO(77, 61, 113, 0.5843137254901961),borderRadius: BorderRadius.circular(10)),
              ),
            ),
          ),

        ],
      ),
    ),
  ));
}
addnews(BuildContext context){
  return showDialog(context: context, builder:(context)=>AlertDialog(
    title: Center(child: Text("Add news",style: TextStyle(fontFamily: "Merriweather",color: Colors.deepPurpleAccent),),),
    content: SingleChildScrollView(
      child: Column(
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
                color: Colors.deepPurpleAccent.withAlpha(80)),
            child: TextFormField(
              keyboardType: TextInputType.text,
              cursorColor: Colors.white,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintStyle: TextStyle(
                      color: Colors.black54, fontWeight: FontWeight.bold),
                  hintText: "add Text news",
                  prefixIcon: Icon(
                    Icons.edit,
                    color: Colors.black,
                  )),
              onChanged: (value){

              },
            ),
          ),
          SizedBox(height: 20,),
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
                color: Colors.deepPurpleAccent.withAlpha(80)),
            child: ListTile(
              leading: Icon(Icons.image),
              title: Text("Choose picture",style: TextStyle(fontWeight: FontWeight.bold),),
             // onTap:()=> imagefromgalary(context) ,
            ),
          ),
          SizedBox(height: 20,),
          Container(
            padding: EdgeInsets.all(5),
            // margin: EdgeInsets.only(bottom: 30),
            width: MediaQuery.of(context).size.width * 0.3,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Color.fromRGBO(121, 94, 177, 0.5843137254901961),),
            child: MaterialButton(
              onPressed: () {

              },
              child: Text(
                "Add",
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
  ));
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(backgroundColor:Color.fromRGBO(77, 61, 113, 0.5843137254901961) ,child: Center(child:Icon(Icons.add),),onPressed:()=>addnews(context) ,),
      appBar: AppBar(
        title: Text("My news",style: TextStyle(color: Colors.white,fontFamily: "Merriweather"),),
        backgroundColor:Color.fromRGBO(77, 61, 113, 0.5843137254901961),

      ),
      body: Obx((){
        controller.changeinside();
        return ListView.builder(itemCount: controller.mynewslist.length,itemBuilder:(context,int){
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
                          subtitle: Text("${controller.mynewslist[int].type}",style: TextStyle(fontSize: 20,fontFamily: "Merriweather",color: Colors.white),),
                          trailing: IconButton(iconSize: 35,icon:Icon(Icons.delete_forever,color: Colors.white,),onPressed: ()=>_showchoice(context,controller.mynewslist[int].id)),
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

                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("${controller.mynewslist[int].details}",style: TextStyle(fontFamily: "Merriweather",fontSize: 20),),
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
                              fit: BoxFit.fill,
                              image: NetworkImage(

                                  "http://10.0.2.2:8000/storage/images/fashionNewsImages/${controller
                                      .mynewslist[int].image}"),
                            ),
                          ),
                        )
                    )
                  ],
                ),



              ),
            );
        });
      }),
    );;
  }
  Future<void>delete(context,id)async{
  await controller.deletenews(id);
  if(controller.deletestatus==true){
    EasyLoading.showSuccess(controller.message,dismissOnTap: true);
    Navigator.pop(context);
  }else{
    EasyLoading.showError(controller.message,dismissOnTap: true);
  }
  }
}



//image_picker: ^0.6.6+5