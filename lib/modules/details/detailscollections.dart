import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:untitled4/config/server_config.dart';
import 'package:untitled4/modules/details/detailscollections_controller.dart';

import 'details_controller.dart';
class Detailscollections extends StatelessWidget {
Detailscollections_controller controller=Get.put<Detailscollections_controller>(Detailscollections_controller());
Details_controller controller2 =Get.put<Details_controller>(Details_controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Details Collections",
          style: TextStyle(color: Colors.white, fontFamily: "Merriweather"),
        ),
        backgroundColor: Color.fromRGBO(77, 61, 113, 0.5843137254901961),
      ),
      body: Obx((){
        controller.changeinside5();
        return   SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment:MainAxisAlignment.center,
            children: [
              SizedBox(height: 20,),
              Center(child: Text("Collection Pieces",style: TextStyle(color: Color.fromRGBO(77, 61, 113, 0.5843137254901961),fontSize: 18,fontFamily: "Merriweather"),),),
              SizedBox(height: 20,),
              Container(
                 // height: MediaQuery.of(context).size.height*0.75,
                  width: MediaQuery.of(context).size.width,
                  child:
               //   Obx((){
                //    controller.changeinside5();
                  //  EasyLoading.show(status: "Loading ..",dismissOnTap: true);
                    // for(int i=0; i<controller.suggestionlist.length;i++){}
                 //   if(controller.detailscollectionslist.isNotEmpty) {
                     // return
                        GridView.builder(
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          itemCount: controller.detailscollectionslist.length,
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2),
                          itemBuilder: (context, i) {
                            if(controller.detailscollectionslist[i].pieceDetails!=null){
                              return GestureDetector(

                                child: Stack(
                                  children: [
                                    SizedBox(height: 20,),

                                    Container(
                                        margin: EdgeInsets.all(5),
                                        decoration: BoxDecoration(

                                            image: DecorationImage(
                                                image: NetworkImage(
                                                  "http://10.0.2.2:8000/storage/images/piecesImages/${controller
                                                      .detailscollectionslist[i]
                                                      .pieceDetails!.image}",

                                                ),
                                                fit: BoxFit.cover),
                                            borderRadius: BorderRadius
                                                .circular(10.0))
                                    ),
                                    Positioned(
                                      bottom: 5,
                                      left: 5,
                                      child: Container(
                                        child: Center(child: Text(
                                          "new", style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: "Merriweather"),)),
                                        color: Color.fromRGBO(77, 61, 113,
                                            0.5843137254901961),
                                        width: 60,
                                        height: 50,
                                      ),
                                    ),
                                  ],
                                ),
                                onTap: () {
                                  showdetails(controller.detailscollectionslist[i].pieceDetails!.piecesId);
                                  Get.toNamed("/details");
                                },
                              );
                             }
                            if(controller.detailscollectionslist[i].pieceDetails==null){
                              return  GestureDetector(

                                child: Stack(
                                  children: [
                                  SizedBox(height: 30,),
                                    Container(
                                        margin: EdgeInsets.all(5),
                                        decoration: BoxDecoration(

                                            image: DecorationImage(
                                                image: AssetImage(
                                                 "images/cloth1.jpg"

                                                ),
                                                fit: BoxFit.cover),
                                            borderRadius: BorderRadius
                                                .circular(10.0))
                                    ),
                                    // Positioned(
                                    //   bottom: 5,
                                    //   left: 5,
                                    //   child: Container(
                                    //     child: Center(child: Text(
                                    //       "${controller.detailscollectionslist[i]
                                    //           .type}", style: TextStyle(
                                    //         color: Colors.white,
                                    //         fontFamily: "Merriweather"),)),
                                    //     color: Color.fromRGBO(77, 61, 113,
                                    //         0.5843137254901961),
                                    //     width: 60,
                                    //     height: 50,
                                    //   ),
                                    // ),
                                  ],
                                ),
                                onTap: () {
                                  //   Get.toNamed("/details");
                                },
                              );
                            }
                            else{
                              return Container();
                            }

                          }),


                  //  }else{
                  //    return Container(child:Center(child: Text("there is no Pices",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),);
                 //   }
                //  })




              ),

            ],
          ),
        );
      }),
    );
  }
Future<void> showdetails(id)async{
  await controller2.showdetails(id);
}
}
