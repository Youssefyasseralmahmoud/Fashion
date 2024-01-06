
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:untitled4/comments/comment_controller.dart';
import 'package:untitled4/modules/details/details_controller.dart';

class Comments extends StatelessWidget {
 Comment_controller controller=Get.put<Comment_controller>(Comment_controller());
 Details_controller controller2=Get.put<Details_controller>(Details_controller());
 

  @override
  Widget build(BuildContext context) {
    return
      //Container(
    //    child:
    Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromRGBO(77, 61, 113, 0.5843137254901961),
            title: Text(
              "Comments",
              style: TextStyle(color: Colors.white, fontFamily: "Merriweather"),
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              SizedBox(height: 20,),
                // Positioned(
                //
                //  bottom:0,
                //   child:


             //   ),
             //    ListView(
             //      shrinkWrap: true
             //    ,children: [
                  // Positioned(
                  // top: 20,
                  // child:
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height*0.7  ,
                    //child: SingleChildScrollView(
                      child: ListView.builder(shrinkWrap: true,itemCount: controller2.detailspieces[0].comment.length,itemBuilder: (context,int){
                        return
                          ListTile(
                            leading: CircleAvatar(
                              backgroundColor:
                              Color.fromRGBO(77, 61, 113, 0.5843137254901961),
                              child: Icon(Icons.person, color: Colors.white),
                            ),
                            title: Container(
                                margin: EdgeInsets.only(top: 15),
                                child: Text("${controller2.detailspieces[0].comment[int].tableUser.name}",style: TextStyle(fontFamily: "Merriweather"))),
                            trailing: Text("${controller2.detailspieces[0].comment[int].type}",style: TextStyle(fontFamily: "Merriweather"),),
                            subtitle: Container(
                                padding: EdgeInsets.all(10),
                                color: Colors.grey[200],
                                child: Text("${controller2.detailspieces[0].comment[int].details}")),
                          );

                      },

                       // crossAxisAlignment: CrossAxisAlignment.start,



                      ),
                 //   ),
                  ),
                Container(
                  //color: Color.fromRGBO(77, 61, 113, 0.5843137254901961),
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  child:

                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: 5, vertical: 5),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(color: Colors.grey),
                      ),
                    ),
                    child: TextFormField(
                    onChanged:(value){
                      controller.commentt=value;
                    } ,
                      cursorColor: Color.fromRGBO(
                          77, 61, 113, 0.5843137254901961),
                      // autocorrect: true,
                      decoration: InputDecoration(
                        hintText: "  Write a Comment",
                        hintStyle: TextStyle(color: Colors.white),
                        filled: true,
                        fillColor: Color.fromRGBO(
                            77, 61, 113, 0.5843137254901961),
                        //Colors.grey[200],
                        suffixIcon: IconButton(
                            icon: Icon(
                              Icons.send,
                              color: Colors.white,
                            ),
                            onPressed: () {
                           // var idee;controller.oncomment(idee)
                              addcomment(controller2.detailspieces[0].id);
                            }
                        ),
                        contentPadding: EdgeInsets.all(5),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(60),
                          borderSide:
                          BorderSide(style: BorderStyle.none),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(60),
                          borderSide: BorderSide(style: BorderStyle.none),
                        ),
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        // border: OutlineInputBorder(
                        //   borderSide: BorderSide(color:Color.fromRGBO(77, 61, 113, 0.5843137254901961) ),
                        //   borderRadius: BorderRadius.circular(30),
                        // ),
                      ),
                    ),
                  ),

                ),
              //  ),
                  ],
               // ),

            //  ],

            ),
          ),
        );
    //  );
   // );
  }
  void addcomment(id)async{
    EasyLoading.show(status: "Loading ..",dismissOnTap: true);
    await controller.onclickaddcomment(id);
    if(controller.addcommentstatus){
      EasyLoading.showSuccess(controller.message,dismissOnTap: true,duration: Duration(seconds: 4));
    }
    else if(controller.addcommentstatus==false){
      EasyLoading.showError(controller.message,dismissOnTap: true,duration:Duration(seconds: 4));
    }
  }
}
