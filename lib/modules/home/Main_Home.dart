// import 'dart:html';
import 'dart:io';
//import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
//import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:untitled4/models/user.dart';
import 'package:untitled4/modules/details/details_controller.dart';
import 'package:untitled4/modules/details/detailscollections_controller.dart';
import 'package:untitled4/modules/details/suggestion_controller.dart';
import 'package:untitled4/modules/home/main_home_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
//import 'package:flutter_typeahead/flutter_typeahead.dart';
class Main_Home extends StatefulWidget {


// Main_home_controller controller=Get.find();
  @override
  State<Main_Home> createState() => _Main_HomeState();
}

class _Main_HomeState extends State<Main_Home> {
  Main_home_controller controller=Get.put<Main_home_controller>(Main_home_controller());
  Details_controller controller2 =Get.put<Details_controller>(Details_controller());
  Detailscollections_controller controller3=Get.put<Detailscollections_controller>(Detailscollections_controller());

  @override
  Widget build(BuildContext context) {



    return Scaffold(

      appBar: AppBar(
        backgroundColor: Color.fromRGBO(77, 61, 113, 0.5843137254901961),
        title:
            // TypeAheadField(
            //
            // ),
          ListTile(
            leading: Padding(
              padding: const EdgeInsets.all(4.0),
              child:
              Text("TREND", style: TextStyle(fontSize: 20,fontFamily: "Merriweather",color: Colors.white)),
            ),

            trailing: GestureDetector(onTap: (){Get.toNamed('/search');},child: Icon(Icons.search,size: 30,color: Colors.white)),
          )
              // AnimSearchBar(
              //   prefixIcon: Icon(
              //     Icons.search,
              //     color: Colors.black,
              //   ),
              //   width: 300,
              //   rtl: true,
              //   style: TextStyle(color: Colors.black),
              //   suffixIcon: Icon(
              //     Icons.arrow_back,
              //     color: Colors.black,
              //   ),
              //   textController: textcontroller,
              //   onSuffixTap: () {
              //     setState(() {
              //       textcontroller.clear();
              //     });
              //   },
              //   helpText: "Search",
              //   autoFocus: true,
              //   closeSearchOnSuffixTap: true,
              // ),
              //
              // Container(
              //   width: MediaQuery.of(context).size.width*0.7,
              //   child: TextField(
              //     controller: textcontroller,
              //     decoration: InputDecoration(
              //       border: InputBorder.none,
              //       errorBorder: InputBorder.none,
              //       enabledBorder:  InputBorder.none,
              //       focusedBorder: InputBorder.none,
              //       contentPadding: EdgeInsets.all(15),
              //       hintText: "Search"
              //     ),
              //   ),
              //   decoration: BoxDecoration(
              //     color: Colors.white60,
              //     borderRadius: BorderRadius.circular(30),
              //   ),
              // ),



      ),
      body:
          // Container(
          //  width: 400,
          // height: double.infinity,
          // child:
          ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        children: [
          // Container(
          //   width: double.infinity,
          //   height: 150.0,
          //   child: ListView(
          //     physics: BouncingScrollPhysics(),
          //     scrollDirection: Axis.horizontal,
          //     children: [
          //       GestureDetector(
          //         onTap: () {
          //           Get.toNamed("/storyview");
          //         },
          //         child: CircleAvatar(
          //             radius: 50,
          //             backgroundImage: AssetImage("images/cloth2.jpg")),
          //       ),
          //       SizedBox(width: 8),
          //       GestureDetector(
          //         child: CircleAvatar(
          //             radius: 50,
          //             backgroundImage: AssetImage("images/cloth2.jpg")),
          //       ),
          //       SizedBox(width: 8),
          //       CircleAvatar(
          //           radius: 50,
          //           backgroundImage: AssetImage("images/cloth2.jpg")),
          //       SizedBox(width: 8),
          //       CircleAvatar(
          //           radius: 50,
          //           backgroundImage: AssetImage("images/cloth2.jpg")),
          //       SizedBox(width: 8),
          //       CircleAvatar(
          //           radius: 50,
          //           backgroundImage: AssetImage("images/cloth2.jpg")),
          //     ],
          //   ),
          // ),
          SizedBox(height: 20),
          Center(
            child: Text(
              "NEWS",
              style: TextStyle(fontSize: 20, fontFamily: "Merriweather"),
            ),
          ),

          Divider(
            thickness: 0.5,
          ),

         // Container(
          //  width: 200.0,
         //   child: Center(
            //  child: ListView(
             //   shrinkWrap: true,
              //  children: [
               //   SizedBox(
                 //   height: 200,
                 //   width: double.infinity,
                  //  child: Stack(
                   //   children: [
                  Obx((){
                    controller.changeinside3();
                    EasyLoading.show(status: "Loading ..",dismissOnTap: true);
                    if(controller.newslist.isNotEmpty){
                      return Center(
                        child: CarouselSlider.builder(itemCount:controller.newslist.length,options:CarouselOptions(height: 200,enlargeCenterPage: true,autoPlay: true),itemBuilder: (context,int){
                          return Container(
                            width: double.infinity,
                            height: 250,
                            child: Image.network(
                                "http://10.0.2.2:8000/storage/images/fashionNewsImages/${controller
                                    .newslist[int].image}",fit: BoxFit.cover),
                          );
                        }),
                      );
                    }else{
                      return Container();
                    }

                  }),
                   SizedBox(height: 10,),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Text("See More",style: TextStyle(fontFamily:"Merriweather"),),
                       SizedBox(width: 10,),
                       CircleAvatar(
                       backgroundColor: Color.fromRGBO(
                          77, 61, 113, 0.5843137254901961),
                       child: IconButton(
                         icon: Icon(Icons.arrow_forward_sharp),
                         onPressed: () {
                          Get.toNamed("/allnews");
                         },
                  ),
                       ),
                     ],
                   ),

                        // Carousel(
                        //
                        //   images:
                        //
                        //   // [
                        //   //
                        //   //  NetworkImage(
                        //   //       "http://10.0.2.2:8000/storage/images/piecesImages/${controller
                        //   //           .pieceslist[0].image}"),
                        //   //   NetworkImage(
                        //   //       "http://10.0.2.2:8000/storage/images/piecesImages/${controller
                        //   //           .pieceslist[1].image}"),
                        //   //   //Image.asset("images/cloth4.jpg", fit: BoxFit.cover),
                        //   // //  Image.asset("images/cloth3.jpg", fit: BoxFit.cover),
                        //   //   //Image.asset("images/cloth5.jpg", fit: BoxFit.cover),
                        //   // ],
                        // ),
                  //      Positioned(
                  //          bottom: 10,
                  //          right: 20,
                   //         child: CircleAvatar(
                  //            backgroundColor: Color.fromRGBO(
                   //               77, 61, 113, 0.5843137254901961),
                  //            child: IconButton(
                  //              icon: Icon(Icons.arrow_forward_sharp),
                  //              onPressed: () {
                   //               Get.toNamed("/allnews");
                  //              },
                   //           ),
                  //          ))
                   //   ],
                  //  ),
              //    ),
              //  ],
           //   ),
          //  ),
         // ),
          SizedBox(height: 20),
          Divider(
            thickness: 0.5,
          ),
          Center(
            child: Text(
              "NEW",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Merriweather"),
            ),
          ),
          SizedBox(height: 20.0),
        // Obx((){
         //   controller.changeinside();
           // if(controller.inside.value==true){
           //   return
        Container(
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                height: 250,
                child:

                Obx((){
                  controller.changeinside();
                  return GridView.builder(
                      itemCount: controller.pieceslist.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2),
                      itemBuilder: (context, i) {
                        return GestureDetector(
                          child: Stack(
                            children: [
                              Container(

                                margin: EdgeInsets.all(5),
                                width: 200,
                                height: 200,
                                // child: FadeInImage.assetNetwork(fit: BoxFit.cover,placeholder:'', image:'C:/Users/Youssef/Pictures/test.jpg'),
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                      //Pictures

                                      //'C:/Users/Youssef/Desktop/fashion/fashion/public/images/piecesImages/'+'${controller.pieceslist[i].image}'
                                        image:
                                        //  FileImage(File("C:/Users/Youssef/Pictures/test.jpg")),

                                        NetworkImage(
                                            "http://10.0.2.2:8000/storage/images/piecesImages/${controller
                                                .pieceslist[i].image}"),
                                        // AssetImage("C:/Users/Youssef/Pictures/test.jpg"),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(10.0)),
                              ),
                              Positioned(

                                bottom: 5,
                                left: 5,
                                child: Container(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Center(
                                        child: Text(
                                          '${controller.pieceslist[i].name}',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: "Merriweather"),
                                        )),
                                  ),
                                  color:
                                  Color.fromRGBO(77, 61, 113, 0.5843137254901961),
                                  width: 80,
                                  height: 50,
                                ),
                              ),
                            ],
                          ),
                          onTap: () {
                            showdetails(controller.pieceslist[i].id);
                            Get.toNamed("/details");
                          },
                        );
                      });
                })
              ),


            // }else
            // return Container(
            //   width: 200,
            //   height: 200,
            //   color: Colors.deepPurpleAccent,
            // );
        //  }),

          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("See More",style: TextStyle(fontFamily:"Merriweather"),),
              SizedBox(width: 10,),
              CircleAvatar(
                backgroundColor: Color.fromRGBO(
                    77, 61, 113, 0.5843137254901961),
                child: IconButton(
                  icon: Icon(Icons.arrow_forward_sharp),
                  onPressed: () {
                    Get.toNamed("/allpieces");
                  },
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: Text(
              "New Collections",
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Merriweather"),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Obx((){
            controller.changeinside2();
          //  if(controller.inside2==true) {
              return Container(
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                height: 250,
                child: GridView.builder(
                    itemCount: controller.collectionslist.length,
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
                                            "http://10.0.2.2:8000/storage/images/collectionimages/${controller
                                                .collectionslist[i].image}"),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(10.0))),
                            Positioned(
                              bottom: 5,
                              left: 5,
                              child: Container(
                                child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        '${controller.collectionslist[i].name}',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: "Merriweather"),
                                      ),
                                    )),
                                color:
                                Color.fromRGBO(77, 61, 113, 0.5843137254901961),
                                width: 70,
                                height: 50,
                              ),
                            ),
                          ],
                        ),
                        onTap: () {
                          showdetailscollections(controller.collectionslist[i].id);
                          Get.toNamed('/detailscollections');
                         // Get.toNamed("/details");
                        },
                      );
                    }),
              );
           // }
            // else
            //   return Container();
          })
        ],
      ),
      //  ),
    );
  }
 Future<void> showdetails(id)async{
    await controller2.showdetails(id);
 }
  Future<void> showdetailscollections(id)async{
    await controller3.showdetailscollections(id);
  }

}
// flutter_typeahead: ^2.0.0