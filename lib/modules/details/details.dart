import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:favorite_button/favorite_button.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:untitled4/comments/comment_controller.dart';
import 'package:untitled4/modules/details/details_controller.dart';
import 'package:untitled4/modules/details/suggestion_controller.dart';

class Details extends StatelessWidget {
  Details_controller controller = Get.put<Details_controller>(Details_controller());
  Suggestion_controller controller3=Get.put<Suggestion_controller>(Suggestion_controller());
  Comment_controller controller2=Get.put<Comment_controller>(Comment_controller());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(77, 61, 113, 0.5843137254901961),
        title: Text(
          "Details",
          style: TextStyle(fontFamily: "Merriweather", color: Colors.white),
        ),
      ),
      body: Obx((){
        controller.changeinside2();
        EasyLoading.show(status: "Loading ..",dismissOnTap: true);
        if(controller.detailspieces.isNotEmpty) {
          return ListView(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child:
                      Center(
                        child: CarouselSlider.builder(
                            itemCount: controller.detailspieces.length,
                            options: CarouselOptions(
                                height: 200,
                                enlargeCenterPage: true,
                                autoPlay: true),
                            itemBuilder: (context, int) {
                              return Container(
                                width: double.infinity,
                                height: 250,
                                child: Image.network(
                                    "http://10.0.2.2:8000/storage/images/piecesImages/details/${controller
                                        .detailspieces[int].pieceDetails[int].image}",
                                    fit: BoxFit.cover),
                              );
                            }),
                      ),

                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),


                     ListTile(
                    title:

                        FavoriteButton(
                          isFavorite: false,
                          valueChanged: (_isfavorite) {},
                        ),
                       subtitle:  Row(
                         children: [
                           Text("${controller.detailspieces[0].numLiked}"),
                           Icon(Icons.favorite,color: Colors.red,)
                         ],
                       ),

                    ),

                  Divider(
                    height: 8,
                    thickness: 1,
                  ),
                  SizedBox(
                    height: 30,
                  ),

                  Text(
                    "Colors:",
                    style: TextStyle(fontSize: 20, fontFamily: "Merriweather"),
                  ),
                  //   SizedBox(width:30,),

                  SizedBox(height: 5),

                  //Padding(
                  // padding: const EdgeInsets.all(8.0),
                  // child:
                  Container(
                    height: 50,
                    width: MediaQuery
                        .of(context)
                        .size
                        .width,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: 1,
                      itemBuilder: (context, int) {
                        return Container(
                          margin: EdgeInsets.all(5),
                          child: CircleAvatar(
                            radius: 30,
                            backgroundColor:getcolor(),
                          ),
                        );
                      },
                    ),
                  ),

                  //),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Size:",
                    style: TextStyle(fontSize: 20, fontFamily: "Merriweather"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      width: MediaQuery
                          .of(context)
                          .size
                          .width,
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 1,
                        itemBuilder: (context, int) {
                          return Center(
                            child: Container(
                              margin: EdgeInsets.all(5),
                              width: 70,
                              height: 50,
                              child:
                              // Obx(() {
                              //  controller.changeinside();
                              //  return
                              Center(
                                child: Text(
                                  //  controller.detailspieces[int].pieceDetails[int].size.name
                                  "${controller.detailspieces[int]
                                      .pieceDetails[int].size.name}",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              //  }),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.horizontal(
                                      left: Radius.circular(100),
                                      right: Radius.circular(100)),
                                  border:
                                  Border.all(color: Colors.black, width: 2)),
                            ),
                          );
                        },

                        // alignment: WrapAlignment.end,
                        // spacing: 10,
                        // runSpacing: 10,
                      ),
                    ),
                  ),
                  Divider(thickness: 5.5, color: Colors.black.withAlpha(20)),
                  Padding(
                    padding: const EdgeInsets.only(top: 8, bottom: 8),
                    child: GestureDetector(
                      onTap: () {
                        Get.toNamed("/descriptions");
                      },
                      child: Container(
                        child: ListTile(
                          trailing: Icon(
                            Icons.arrow_back,
                            color: Colors.black,
                          ),
                          leading: Text(
                            "Description",
                            style:
                            TextStyle(fontFamily: "Merriweather", fontSize: 20),
                          ),
                        ),
                        width: MediaQuery
                            .of(context)
                            .size
                            .width,
                        height: 50,
                        decoration: BoxDecoration(
                          border: Border(
                              top: BorderSide(
                                  width: 1, color: Colors.black.withAlpha(50)),
                              bottom: BorderSide(
                                  width: 1, color: Colors.black.withAlpha(50))),
                        ),
                      ),
                    ),
                  ),
                  //  Obx((){
                  //    controller.changeinside4();
                  //    return
                  Padding(
                    padding: const EdgeInsets.only(top: 8, bottom: 8),
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              // Text(
                              //   "Brand Name : ",
                              //   style: TextStyle(
                              //       fontFamily: "Merriweather", fontSize: 15),
                              // ),
                              CircleAvatar(
                                radius: 40,
                                backgroundImage: NetworkImage(
                                  "http://10.0.2.2:8000/storage/images/piecesImages/${controller
                                      .detailspieces[0].image}",
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "Name : ${controller.detailspieces[0].name}",
                                style: TextStyle(fontFamily: "Merriweather"),
                              ),
                              SizedBox(
                                width: 20.0,
                              ),
                              Text(
                                "Subcategory : ${controller.detailspieces[0]
                                    .subCategory.name}",
                                style: TextStyle(fontFamily: "Merriweather"),
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Price : ${controller.detailspieces[0]
                                        .price}",
                                    style: TextStyle(
                                        fontFamily: "Merriweather"),
                                  ),
                                  Icon(Icons.attach_money),
                                ],
                              ),
                              SizedBox(
                                width: 20.0,
                              ),
                              Text(
                                "Mastercategory : ${controller.detailspieces[0]
                                    .masterCategory.name}",
                                style: TextStyle(fontFamily: "Merriweather"),
                              ),
                            ],
                          ),
                        ],
                      ),
                      width: MediaQuery
                          .of(context)
                          .size
                          .width,
                      height: MediaQuery
                          .of(context)
                          .size
                          .height * 0.3,
                      decoration: BoxDecoration(
                        border: Border(
                            top: BorderSide(
                                width: 1, color: Colors.black.withAlpha(50)),
                            bottom: BorderSide(
                                width: 1, color: Colors.black.withAlpha(50))),
                      ),
                    ),
                  ),
                  //  }),
                  Padding(
                    padding: const EdgeInsets.only(top: 8, bottom: 8),
                    child: GestureDetector(
                      onTap: () {
                        showsuggestion(controller.detailspieces[0].id);
                        // print("test id youssef");
                        // print(controller.detailspieces[0].id);
                        Get.toNamed("/suggestion");
                      },
                      child: Container(
                        child: ListTile(
                          trailing: Icon(
                            Icons.arrow_back,
                            color: Colors.black,
                          ),
                          leading: Text(
                            "Suggestions",
                            style:
                            TextStyle(fontFamily: "Merriweather", fontSize: 20),
                          ),
                        ),
                        width: MediaQuery
                            .of(context)
                            .size
                            .width,
                        height: 50,
                        decoration: BoxDecoration(
                          border: Border(
                              top: BorderSide(
                                  width: 1, color: Colors.black.withAlpha(50)),
                              bottom: BorderSide(
                                  width: 1, color: Colors.black.withAlpha(50))),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8, bottom: 8),
                    child: GestureDetector(
                      onTap: () {
                        addcomment(controller.detailspieces[0].id);
                        Get.toNamed("/comments");
                      },
                      child: Container(
                        child: ListTile(
                          trailing: Icon(
                            Icons.arrow_back,
                            color: Colors.black,
                          ),
                          leading: Text(
                            "Comments",
                            style:
                            TextStyle(fontFamily: "Merriweather", fontSize: 20),
                          ),
                        ),
                        width: MediaQuery
                            .of(context)
                            .size
                            .width,
                        height: 50,
                        decoration: BoxDecoration(
                          border: Border(
                              top: BorderSide(
                                  width: 1, color: Colors.black.withAlpha(50)),
                              bottom: BorderSide(
                                  width: 1, color: Colors.black.withAlpha(50))),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "You May Also Like",
                      style: TextStyle(
                          fontFamily: "Merriweather", fontSize: 20),
                    ),
                  ),
                ],
              ),
              //   Obx((){
              //    controller.changeinside3();
              //   return
              GridView.builder(
                  itemCount: controller.maylikelist.length,
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
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
                                              .maylikelist[i].image}"),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(10.0))),
                          Positioned(
                            bottom: 5,
                            left: 5,
                            child: Container(
                              child: Center(
                                  child: Text(
                                    "${controller.maylikelist[i].name}",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: "Merriweather"),
                                  )),
                              color:
                              Color.fromRGBO(77, 61, 113, 0.5843137254901961),
                              width: 60,
                              height: 50,
                            ),
                          ),
                        ],
                      ),
                      onTap: () {
                        Get.toNamed("/details");
                      },
                    );
                  }),
              // })
            ],
          );
        }else{
          return Container();
        }
      })
    );
  }

  Color? getcolor(){
    var color=controller.detailspieces[0].pieceDetails[0].color.name;
    if(color=="Navy Blue"){
      return Colors.blue;
    }
    if(color=="Blue"){
      return Colors.blue;
    }
    if(color=="Silver"){
      return Colors.white30;
    }
    if(color=="Black"){
      return Colors.black;
    }
     if(color=="Grey"){
      return Colors.grey;
    }
    if(color=="Green"){
      return Colors.green;
    }
    if(color=="Purple"){
      return Colors.purple;
    }
    if(color=="White"){
      return Colors.white;
    }
    if(color=="Beige"){
      return Colors.brown;
    }
    if(color=="Brown"){
      return Colors.brown;
    }
    if(color=="Bronze"){
      return Colors.brown;
    }
    if(color=="Teal"){
      return Colors.teal;
    }
    if(color=="Copper"){
      return Colors.amberAccent;
    }
    if(color=="Pink"){
      return Colors.pink;
    }
    if(color=="Maroon"){
      return Colors.redAccent;
    }
    if(color=="Red"){
      return Colors.red;
    }
    if(color=="Khaki"){
      return Colors.amber;
    }
    if(color=="Orange"){
      return Colors.deepOrange;
    }
    if(color=="Yellow"){
      return Colors.yellow;
    }
    if(color=="Charcoal"){
      return Colors.white10;
    }
    if(color=="Gold"){
    return Colors.yellow;
    }
    if(color=="Steel"){
    return Colors.white38;
    }
    if(color=="Tan"){
    return Colors.brown;
    }
    if(color=="Multi"){
    return Colors.deepPurpleAccent;
    }
    if(color=="Magenta"){
    return Colors.deepPurple;
    }
    if(color=="Lavender"){
    return Colors.deepPurple;
    }
    if(color=="Cream"){
    return Colors.white;
    }
    if(color=="Peach"){
      return Colors.deepOrangeAccent;
    }
    if(color=="Olive"){
      return Colors.lightGreen;
    }
    if(color=="Burgundy"){
      return Colors.red;
    }
    if(color=="Rust"){
      return Colors.deepOrange;
    }
    if(color=="Rose"){
      return Colors.pinkAccent;
    }
    if(color=="Skin"){
    return Colors.brown[400];
    }
    if(color=="Mauve"){
      return Colors.purple;
    }
    if(color=="Metallic"){
      return Colors.white12;
    }
    if(color=="Sea Green"){
      return Colors.blueGrey;
    }
    if(color=="Coffee Brown"){
      return Colors.brown;
    }
    if(color=="Mustard"){
      return Colors.yellow;
    }
    if(color=="Taupe"){
    return Colors.white10;
    }
    if(color=="Turquoise Blue"){
    return Colors.blue;
    }
    if(color=="Off White"){
      return Colors.white;
    }
    if(color=="Mushroom Brown"){
    return Colors.brown;
    }
    if(color=="Fluorescent Green"){
      return Colors.green;
    }
    if(color=="Nude"){
      return Colors.brown;
    }
  }
  Future<void> showsuggestion(id)async{
    await controller3.showsuggestion(id);
    await controller3.showsuggestion2(id);
    await controller3.showsuggestion3(id);
  }
  Future<void> addcomment(id)async{
    await controller2.oncomment(id);
  }
}
