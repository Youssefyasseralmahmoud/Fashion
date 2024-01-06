import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:untitled4/modules/details/suggestion_controller.dart';
import 'package:untitled4/modules/home/main_home_controller.dart';

class Suggestion extends StatelessWidget {
  Suggestion_controller controller=Get.put<Suggestion_controller>(Suggestion_controller());
  Main_home_controller controller2=Get.put<Main_home_controller>(Main_home_controller());

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            labelColor: Colors.white,
            indicatorColor: Colors.white,
            tabs: [
              Tab(
                child: Text(
                  "Cloths Suggestion",
                  style: TextStyle(fontFamily: "Merriweather"),
                ),
              ),
              Tab(
                child: Text(
                  "Shoses Suggestion",
                  style: TextStyle(fontFamily: "Merriweather"),
                ),
              ),
              Tab(
                child: Text(
                  "Eccasorries Suggestion",
                  style: TextStyle(fontFamily: "Merriweather"),
                ),
              ),
            ],
            isScrollable: true,
          ),
          backgroundColor: Color.fromRGBO(77, 61, 113, 0.5843137254901961),
          title: Text(
            "Suggestions",
            style: TextStyle(color: Colors.white, fontFamily: "Merriweather"),
          ),
        ),
        body:
         // if(controller.suggestionlist.isNotEmpty){
          Obx((){
            controller.changeinside();
            return  TabBarView(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text("You May Also Like",style: TextStyle(fontFamily: "Merriweather",fontSize: 20),),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height*0.75,
                        width: MediaQuery.of(context).size.width,
                        child:
                        //   Obx((){
                        //     controller.changeinside();
                        //    EasyLoading.show(status: "Loading ..",dismissOnTap: true);
                        // for(int i=0; i<controller.suggestionlist.length;i++){}
                      //   if(controller.suggestionlist.isNotEmpty) {
                        //  return
                        GridView.builder(
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            itemCount: controller.suggestionlist.length,
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2),
                            itemBuilder: (context, i) {
                              return GestureDetector(

                                child: Stack(
                                  children: [

                                    Container(
                                        margin: EdgeInsets.all(5),
                                        decoration: BoxDecoration(

                                            image: DecorationImage(
                                                image: NetworkImage(
                                                  "http://10.0.2.2:8000/storage/images/piecesImages/${controller
                                                      .suggestionlist[i]
                                                      .image}",
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
                                          "${controller.suggestionlist[i]
                                              .name}", style: TextStyle(
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
                                  //   Get.toNamed("/details");
                                },
                              );
                            }),


                        //   }
    //   else{
                        //  return Container(child:Center(child: Text("there is no suggestions",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),);
                        //   }
                        //  })




                      ),

                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text("You May Also Like",style: TextStyle(fontFamily: "Merriweather",fontSize: 20),),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height*0.75,
                        width: MediaQuery.of(context).size.width,
                        child:
                        // Obx((){
                        //   controller.changeinside2();
                        //  EasyLoading.show(status: "Loading ..",dismissOnTap: true);
                        // if(controller.suggestionlist2.isNotEmpty) {
                        //   return
                        GridView.builder(
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            itemCount: controller.suggestionlist2.length,
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2),
                            itemBuilder: (context, i) {
                              return GestureDetector(

                                child: Stack(
                                  children: [

                                    Container(
                                        margin: EdgeInsets.all(5),
                                        decoration: BoxDecoration(

                                            image: DecorationImage(
                                                image: NetworkImage(
                                                  "http://10.0.2.2:8000/storage/images/piecesImages/${controller
                                                      .suggestionlist2[i]
                                                      .image}",
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
                                          "${controller.suggestionlist2[i]
                                              .name}", style: TextStyle(
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
                                  //   Get.toNamed("/details");
                                },
                              );
                            }),


                        //  }else{
                        //   return Container(child:Center(child: Text("there is no suggestions",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),);
                        // }})




                      ),

                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text("You May Also Like",style: TextStyle(fontFamily: "Merriweather",fontSize: 20),),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height*0.75,
                        width: MediaQuery.of(context).size.width,
                        child:
                        //  Obx((){
                        //   controller.changeinside3();
                        //  EasyLoading.show(status: "Loading ..",dismissOnTap: true);
                        //   if(controller.suggestionlist3.isNotEmpty) {
                        //  return
                        GridView.builder(
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            itemCount: controller.suggestionlist3.length,
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2),
                            itemBuilder: (context, i) {
                              return GestureDetector(

                                child: Stack(
                                  children: [

                                    Container(
                                        margin: EdgeInsets.all(5),
                                        decoration: BoxDecoration(

                                            image: DecorationImage(
                                                image: NetworkImage(
                                                  "http://10.0.2.2:8000/storage/images/piecesImages/${controller
                                                      .suggestionlist3[i]
                                                      .image}",
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
                                          "${controller.suggestionlist3[i]
                                              .name}", style: TextStyle(
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
                                  //   Get.toNamed("/details");
                                },
                              );
                            }),


                        //    }else{
                        //    return Container(child:Center(child: Text("there is no suggestions",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),);
                        //   }})




                      ),

                    ],
                  ),
                ),
              ],
            );
          })
      //  }
          // else{
          //   return Container();
          // }

      ),
    );
  }
}
