import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:get/get.dart';
import 'package:multiselect/multiselect.dart';
import 'package:chips_choice_null_safety/chips_choice_null_safety.dart';
 import 'package:untitled4/modules/category/categorycontroller.dart';
import 'package:flutter_awesome_select/flutter_awesome_select.dart';
import 'package:untitled4/modules/details/details_controller.dart';

import 'categorycontroller.dart';


class Category extends StatelessWidget {

Categorycontroller controller =Get.put(Categorycontroller());
Details_controller controller2=Get.put<Details_controller>(Details_controller());
//new Categorycontroller();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          leading: Builder(builder: (context){
            return IconButton(onPressed: () =>Scaffold.of(context).openDrawer(), icon: Icon(Icons.filter_alt_outlined));
        }),

          bottom: TabBar(
            labelColor: Colors.white,
            indicatorColor: Colors.white,
            tabs: [
              GestureDetector(
                onTap: (){
                  var id=1;
                  showsubcategory(id);
                },
                child: Tab(
                  child: Text(
                    "Apparel",
                    style: TextStyle(fontFamily: "Merriweather"),
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  var id=2;
                  showsubcategory2(id);
                },
                child: Tab(

                 child: Text(
                      "Accessories",
                      style: TextStyle(fontFamily: "Merriweather"),
                    ),

                ),
              ),
              GestureDetector(
                onTap: (){
                  var id=3;
                  showsubcategory3(id);
                },
                child: Tab(
                  child: Text(
                    "Footwear",
                    style: TextStyle(fontFamily: "Merriweather"),
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  showallcompanies();
                },
                child: Tab(
                  child: Text(
                    "Company",
                    style: TextStyle(fontFamily: "Merriweather"),
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  showallexpert();
                },
                child: Tab(
                  child: Text(
                    "Experts",
                    style: TextStyle(fontFamily: "Merriweather"),
                  ),
                ),
              ),
            ],
            isScrollable: true,
          ),

          backgroundColor: Color.fromRGBO(77, 61, 113, 0.5843137254901961),
          title:Row(children: [Text(
            "Category",
            style: TextStyle(color: Colors.white, fontFamily: "Merriweather"),
          ),
            SizedBox(width: 50,),
            Obx((){
              return  DropdownButton(
                dropdownColor: Color.fromRGBO(77, 61, 113, 0.3803921568627451),
                value: controller.selected.value,
                hint: Text(
                  "Sorted By",
                  style: TextStyle(color: Colors.white,fontSize: 20,fontFamily: "Merriweather"),
                ),
                items: controller.items
                    .map((e) => DropdownMenuItem(
                  child: Text("$e",style: TextStyle(fontFamily: "Merriweather",color: Colors.white ),),
                  value: e,
                ))
                    .toList(),
                onChanged: (val){
                  controller.selected.value=val.toString();
                },

              );
            })

          ],
          ),


        ),
        body: Obx((){
          controller.changeinside();
          return TabBarView(
            children: [
              Row(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      physics: BouncingScrollPhysics(),
                      children: [
                        SizedBox(height: 20),
                        Center(
                          child: Text("NEW IN APPAREL",style: TextStyle(fontSize: 17,fontFamily: "Merriweather"),),
                        ),
                        SizedBox(height: 20),

                        GridView.builder(itemCount: controller.piecesinapparellist.length,itemBuilder: (context,int){
                          return  GestureDetector(

                            child:Stack(

                              children: [

                                Container(
                                    margin: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                "http://10.0.2.2:8000/storage/images/piecesImages/${controller
                                                    .piecesinapparellist[int].image}"),
                                            fit: BoxFit.cover),
                                        borderRadius: BorderRadius.circular(10.0))
                                ),
                                Positioned(
                                  bottom: 5,
                                  left: 5,
                                  child: Container(
                                    child: Center(child: Text("${controller.piecesinapparellist[int].name}",style: TextStyle(color:Colors.white,fontFamily: "Merriweather"),),),
                                    color: Color.fromRGBO(86, 69, 120, 0.5843137254901961),
                                    width: 60,
                                    height: 50,
                                  ),
                                ),
                              ],
                            ),
                            onTap: (){
                              ////////
                              showdetails(controller.piecesinapparellist[int].id);
                              Get.toNamed("/details");
                            },
                          );
                        },
                          physics: BouncingScrollPhysics(),
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2),

                        ),

                      ],

                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width * 0.3,
                    color: Color.fromRGBO(77, 61, 113, 0.3803921568627451),
                    child: ListView.builder(
                      itemCount: controller.subcategorylist.length,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context,int){
                        return  Container(
                          width: double.infinity,
                          height: MediaQuery.of(context).size.height*0.1,
                          // color: Color.fromRGBO(77, 61, 113, 0.3803921568627451),
                          child: TextButton(
                            onPressed: () {

                                showpicesinapparel(controller.subcategorylist[int].id);

                            },
                            child: Center(
                              child: Text(
                                "${controller.subcategorylist[int].name}",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "Merriweather"),
                              ),
                            ),),
                        );
                      },

                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      physics: BouncingScrollPhysics(),
                      children: [
                        SizedBox(height: 20),
                        Center(
                          child: Text("NEW IN Accessories",style: TextStyle(fontSize: 17,fontFamily: "Merriweather"),),
                        ),
                        SizedBox(height: 20),

                        GridView.builder(itemCount:controller.piecesinaccessorieslist.length,itemBuilder: (context,i){
                          return  GestureDetector(

                            child:    Stack(
                              children: [

                                Container(
                                    margin: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                "http://10.0.2.2:8000/storage/images/piecesImages/${controller
                                                    .piecesinaccessorieslist[i].image}"),
                                            fit: BoxFit.cover),
                                        borderRadius: BorderRadius.circular(10.0))
                                ),
                                Positioned(
                                  bottom: 5,
                                  left: 5,
                                  child: Container(
                                    child: Center(child: Text("${controller.piecesinaccessorieslist[i].name}",style: TextStyle(color:Colors.white,fontFamily: "Merriweather"),),),
                                    color: Color.fromRGBO(86, 69, 120, 0.5843137254901961),
                                    width: 60,
                                    height: 50,
                                  ),
                                ),
                              ],
                            ),
                            onTap: (){
                              showdetails(controller.piecesinaccessorieslist[i].id);
                              Get.toNamed("/details");
                            },
                          );
                        },
                          physics: BouncingScrollPhysics(),
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2),

                        ),

                      ],

                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width * 0.3,
                    color: Color.fromRGBO(77, 61, 113, 0.3803921568627451),
                    child: ListView.builder(
                      itemCount: controller.subcategorylist2.length,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context,i){
                        return  Container(
                          width: double.infinity,
                          height: MediaQuery.of(context).size.height*0.1,
                          // color: Color.fromRGBO(77, 61, 113, 0.3803921568627451),
                          child: TextButton(
                            onPressed: () {
                              showpicesinaccessories(controller.subcategorylist2[i].id);
                            },
                            child: Center(
                              child: Text(
                                "${controller.subcategorylist2[i].name}",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "Merriweather"),
                              ),
                            ),),
                        );
                      },

                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      physics: BouncingScrollPhysics(),
                      children: [
                        SizedBox(height: 20),
                        Center(
                          child: Text("NEW IN Footwear",style: TextStyle(fontSize: 17,fontFamily: "Merriweather"),),
                        ),
                        SizedBox(height: 20),

                        GridView.builder(itemCount:controller.piecesinfootwearlist.length,itemBuilder: (context,int){
                          return  GestureDetector(

                            child:    Stack(
                              children: [

                                Container(
                                    margin: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                "http://10.0.2.2:8000/storage/images/piecesImages/${controller
                                                    .piecesinfootwearlist[int].image}"),
                                            fit: BoxFit.cover),
                                        borderRadius: BorderRadius.circular(10.0))
                                ),
                                Positioned(
                                  bottom: 5,
                                  left: 5,
                                  child: Container(
                                    child: Center(child: Text("${controller.piecesinfootwearlist[int].name}",style: TextStyle(color:Colors.white,fontFamily: "Merriweather"),),),
                                    color: Color.fromRGBO(86, 69, 120, 0.5843137254901961),
                                    width: 60,
                                    height: 50,
                                  ),
                                ),
                              ],
                            ),
                            onTap: (){
                              showdetails(controller.piecesinfootwearlist[int].id);
                              Get.toNamed("/details");
                            },
                          );
                        },
                          physics: BouncingScrollPhysics(),
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2),

                        ),

                      ],

                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width * 0.3,
                    color: Color.fromRGBO(77, 61, 113, 0.3803921568627451),
                    child: ListView.builder(
                      itemCount: controller.subcategorylist3.length,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context,int){
                        return  Container(
                          width: double.infinity,
                          height: MediaQuery.of(context).size.height*0.1,
                          // color: Color.fromRGBO(77, 61, 113, 0.3803921568627451),
                          child: TextButton(
                            onPressed: () {
                              showpicesinfootwear(controller.subcategorylist3[int].id);
                            },
                            child: Center(
                              child: Text(
                                "${controller.subcategorylist3[int].name}",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "Merriweather"),
                              ),
                            ),),
                        );
                      },

                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      physics: BouncingScrollPhysics(),
                      children: [
                        SizedBox(height: 20),
                        Center(
                          child: Text(" Company pieces",style: TextStyle(fontSize: 17,fontFamily: "Merriweather"),),
                        ),
                        SizedBox(height: 20),

                        GridView.builder(itemCount:controller.piecesincompanylist.length,itemBuilder: (context,int){
                          return  GestureDetector(

                            child:    Stack(
                              children: [

                                Container(
                                    margin: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                "http://10.0.2.2:8000/storage/images/piecesImages/${controller
                                                    .piecesincompanylist[int].image}"),
                                            fit: BoxFit.cover),
                                        borderRadius: BorderRadius.circular(10.0))
                                ),
                                Positioned(
                                  bottom: 5,
                                  left: 5,
                                  child: Container(
                                    child: Center(child: Text("${controller.piecesincompanylist[int].name}",style: TextStyle(color:Colors.white,fontFamily: "Merriweather"),),),
                                    color: Color.fromRGBO(86, 69, 120, 0.5843137254901961),
                                    width: 60,
                                    height: 50,
                                  ),
                                ),
                              ],
                            ),
                            onTap: (){
                             // showdetails(controller.piecesinfootwearlist[int].id);
                              Get.toNamed("/details");
                            },
                          );
                        },
                          physics: BouncingScrollPhysics(),
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2),

                        ),

                      ],

                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width * 0.3,
                    color: Color.fromRGBO(77, 61, 113, 0.3803921568627451),
                    child: ListView.builder(
                      itemCount: controller.allcompaniesforfillterlist.length,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context,int){
                        return  Container(
                          width: double.infinity,
                          height: MediaQuery.of(context).size.height*0.1,
                          // color: Color.fromRGBO(77, 61, 113, 0.3803921568627451),
                          child: TextButton(
                            onPressed: () {
                              showpicesincompany(controller.allcompaniesforfillterlist[int].id);
                            },
                            child: Center(
                              child: Text(
                                "${controller.allcompaniesforfillterlist[int].name}",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "Merriweather"),
                              ),
                            ),),
                        );
                      },

                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      physics: BouncingScrollPhysics(),
                      children: [
                        SizedBox(height: 20),
                        Center(
                          child: Text(" Expert Pieces",style: TextStyle(fontSize: 17,fontFamily: "Merriweather"),),
                        ),
                        SizedBox(height: 20),

                        GridView.builder(itemCount:controller.piecesinexpertlist.length,itemBuilder: (context,int){
                          return  GestureDetector(

                            child:    Stack(
                              children: [

                                Container(
                                    margin: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                "http://10.0.2.2:8000/storage/images/piecesImages/${controller
                                                    .piecesinexpertlist[int].image}"),
                                            fit: BoxFit.cover),
                                        borderRadius: BorderRadius.circular(10.0))
                                ),
                                Positioned(
                                  bottom: 5,
                                  left: 5,
                                  child: Container(
                                    child: Center(child: Text("${controller.piecesinexpertlist[int].name}",style: TextStyle(color:Colors.white,fontFamily: "Merriweather"),),),
                                    color: Color.fromRGBO(86, 69, 120, 0.5843137254901961),
                                    width: 60,
                                    height: 50,
                                  ),
                                ),
                              ],
                            ),
                            onTap: (){
                              // showdetails(controller.piecesinfootwearlist[int].id);
                              Get.toNamed("/details");
                            },
                          );
                        },
                          physics: BouncingScrollPhysics(),
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2),

                        ),

                      ],

                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width * 0.3,
                    color: Color.fromRGBO(77, 61, 113, 0.3803921568627451),
                    child: ListView.builder(
                      itemCount: controller.allexpertforfilterlist.length,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context,int){
                        return  Container(
                          width: double.infinity,
                          height: MediaQuery.of(context).size.height*0.1,
                          // color: Color.fromRGBO(77, 61, 113, 0.3803921568627451),
                          child: TextButton(
                            onPressed: () {
                              showpicesinexpert(controller.allexpertforfilterlist[int].id);
                            },
                            child: Center(
                              child: Text(
                                "${controller.allexpertforfilterlist[int].name}",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "Merriweather"),
                              ),
                            ),),
                        );
                      },

                    ),
                  ),
                ],
              ),
            ],
          );
        }),
        drawer: Drawer(
         child: SingleChildScrollView(
           scrollDirection: Axis.vertical,
           child: Column(

             children: [
               SizedBox(height: 50,),
               Container(
                 height:50 ,
                 width: MediaQuery.of(context).size.width,
                 color:Color.fromRGBO(122, 89, 193, 0.5843137254901961),
                 child: Center(child: Text("Filter",style: TextStyle(fontFamily: "merriweather",fontSize: 20,color:Colors.white),)),),
               //Divider(thickness: 1,height: 20,),
               // Padding(
               //   padding: const EdgeInsets.only(top: 5),
               //   child: Container(
               //     width: MediaQuery.of(context).size.width,
               //     child: DropDownMultiSelect(
               //       options: controller.options ,
               //       whenEmpty: 'Sorted By',
               //       onChanged: (value){
               //         controller.selectedoptionlist.value=value;
               //         controller.selectedoption.value="";
               //         controller.selectedoptionlist.value.forEach((element) {
               //           controller.selectedoption.value=controller.selectedoption.value + " " +element;
               //         });
               //       },
               //       selectedValues: controller.selectedoptionlist.value,
               //     ),
               //   ),
               // ),
               // Container(
               //     width: MediaQuery.of(context).size.width,
               //     child: DropDownMultiSelect(
               //       options: controller.options ,
               //       whenEmpty: 'Usage',
               //       onChanged: (value){
               //         controller.selectedoptionlist.value=value;
               //         controller.selectedoption.value="";
               //         controller.selectedoptionlist.value.forEach((element) {
               //           controller.selectedoption.value=controller.selectedoption.value + " " +element;
               //         });
               //       },
               //       selectedValues: controller.selectedoptionlist.value,
               //     ),
               //   ),
               SizedBox(height: 30,),
               Text("Season",style: TextStyle(fontFamily: "Merriweather",fontSize: 15),),
             Obx((){
                 return   ChipsChoice<int>.single(

                     choiceStyle:C2ChoiceStyle(color:Colors.black,borderColor: Colors.black,),
                     value: controller.tag.value,
                     onChanged: (val){
                      controller.season[0]=val+1;
                      print(controller.season);
                       controller.tag.value=val;
                       // controller.selectedoptionlist.value=tag;
                       // controller.selectedoption.value="";
                     },
                     choiceItems: C2Choice.listFrom<int, String>(
                       source: controller.options3,
                       value: (i, v) => i,
                       label: (i, v) => v,
                     ),
                 );
               }),
                 //  Container(
                 //   width: MediaQuery.of(context).size.width,
                 //   child: DropDownMultiSelect(
                 //     options: controller.options3,
                 //     whenEmpty: 'Season',
                 //     onChanged:(value){
                 //    controller.season=value;
                 //    //controller.changeinside();
                 //    for(int i=0;i<value.length;i++){
                 //      if(value[i]=="winter"){
                 //        controller.seasonint[i]=1;
                 //      }
                 //      else if(value[i]=="summer"){
                 //        controller.seasonint[i]=2;
                 //      }
                 //      else if(value[i]=="spring"){
                 //        controller.seasonint[i]=3;
                 //      }
                 //      else{
                 //        controller.seasonint[i]=4;
                 //      }
                 //    }
                 //   print( controller.seasonint);
                 //       controller.selectedoptionlist2.value=value;
                 //       controller.selectedoption2.value="";
                 //       controller.selectedoptionlist2.value.forEach((element) {
                 //         controller.selectedoption2.value=controller.selectedoption2.value + " " +element;
                 //       });
                 //     },
                 //     selectedValues: controller.selectedoptionlist2.value,
                 //   ),
                 // ),
               SizedBox(height: 30,),
               Text("gender",style: TextStyle(fontFamily: "Merriweather",fontSize: 15),),
               Obx((){
                 return   ChipsChoice<int>.single(

                   choiceStyle:C2ChoiceStyle(color:Colors.black,borderColor: Colors.black,),
                   value: controller.tag2.value,
                   onChanged: (val){
                     controller.gender[0]=val;
                     print(controller.gender);
                     controller.tag2.value=val;
                     // controller.selectedoptionlist.value=tag;
                     // controller.selectedoption.value="";
                   },
                   choiceItems: C2Choice.listFrom<int, String>(
                     source: controller.options4,
                     value: (i, v) => i,
                     label: (i, v) => v,
                   ),
                 );
               }),
               // Container(
               //     width: MediaQuery.of(context).size.width,
               //     child: DropDownMultiSelect(
               //       options: controller.options4 ,
               //       whenEmpty: 'Gender',
               //       onChanged: (value){
               //         controller.gender=value;
               //         controller.selectedoptionlist3.value=value;
               //         controller.selectedoption3.value="";
               //         controller.selectedoptionlist3.value.forEach((element) {
               //           controller.selectedoption3.value=controller.selectedoption3.value + " " +element;
               //         });
               //       },
               //       selectedValues: controller.selectedoptionlist3.value,
               //     ),
               //   ),

               // Obx((){
               //   return   SmartSelect<String>.single(
               //     choiceType: S2ChoiceType.cards,
               //     selectedValue:controller.value.value,
               //       title: 'Colors',
               //       choiceItems: controller.options2,
               //       choiceStyle: S2ChoiceStyle(color: Color.fromRGBO(77, 61, 113, 0.5843137254901961),),
               //
               //       onChange: (state){
               //      controller.value =state.value as RxString ;
               //       }
               //   );
               // }),
               SizedBox(height: 30,),
               Text("Clors",style: TextStyle(fontFamily: "Merriweather",fontSize: 15),),
               Obx((){
                 return   ChipsChoice<int>.single(

                   choiceStyle:C2ChoiceStyle(color:Colors.black,borderColor: Colors.black,),
                   value: controller.tag3.value,
                   onChanged: (val){
                     controller.color[0]=val+1;
                     print(controller.color);
                     controller.tag3.value=val;
                     // controller.selectedoptionlist.value=tag;
                     // controller.selectedoption.value="";
                   },
                   choiceItems: C2Choice.listFrom<int, String>(
                     source: controller.options1,
                     value: (i, v) => i,
                     label: (i, v) => v,
                   ),
                 );
               }),
      //          Container(
      //            width: MediaQuery.of(context).size.width,
      //            child: DropDownMultiSelect(
      //              options: controller.options1 ,
      //              whenEmpty: 'Colors',
      //              onChanged: (value){
      //                controller.color=value;
      //                controller.selectedoptionlist5.value=value;
      //                controller.selectedoption5.value="";
      //                controller.selectedoptionlist5.value.forEach((element) {
      //                  controller.selectedoption5.value=controller.selectedoption5.value + " " +element;
      //                });
      //              },
      //              selectedValues: controller.selectedoptionlist5.value,
      //            ),
      //          ),
      // Obx((){
      //   return   ChipsChoice<int>.single(
      //
      //       choiceStyle:C2ChoiceStyle(color:Colors.black,borderColor: Colors.black,),
      //       value: controller.tag.value,
      //       onChanged: (val){
      //        controller.color=val;
      //        print(controller.color);
      //         controller.tag.value=val;
      //         // controller.selectedoptionlist.value=tag;
      //         // controller.selectedoption.value="";
      //       },
      //       choiceItems: C2Choice.listFrom<int, String>(
      //         source: controller.options1,
      //         value: (i, v) => i,
      //         label: (i, v) => v,
      //       ),
      //   );
      // }),
               SizedBox(height: 30,),
               Text("Size",style: TextStyle(fontFamily: "Merriweather",fontSize: 15),),
               Obx((){
                 return   ChipsChoice<int>.single(

                   choiceStyle:C2ChoiceStyle(color:Colors.black,borderColor: Colors.black,),
                   value: controller.tag4.value,
                   onChanged: (val){
                     controller.size[0]=val+1;
                     print(controller.size);
                     controller.tag4.value=val;
                     // controller.selectedoptionlist.value=tag;
                     // controller.selectedoption.value="";
                   },
                   choiceItems: C2Choice.listFrom<int, String>(
                     source: controller.options5,
                     value: (i, v) => i,
                     label: (i, v) => v,
                   ),
                 );
               }),
             //   Container(
             //     width: MediaQuery.of(context).size.width,
             //     child: DropDownMultiSelect(
             //       options: controller.options5 ,
             //       whenEmpty: 'Size',
             //       onChanged: (value){
             //         controller.size=value;
             //         controller.selectedoptionlist4.value=value;
             //         controller.selectedoption4.value="";
             //         controller.selectedoptionlist4.value.forEach((element) {
             //           controller.selectedoption4.value=controller.selectedoption4.value + " " +element;
             //         });
             //       },
             //       selectedValues: controller.selectedoptionlist4.value,
             //     ),
             //   ),
               // Obx((){
               //   return   ChipsChoice<int>.single(
               //
               //     choiceStyle:C2ChoiceStyle(color:Colors.black,borderColor: Colors.black,),
               //     value: controller.tag2.value,
               //     onChanged: (val){
               //       controller.tag2.value=val;
               //       // controller.selectedoptionlist.value=tag;
               //       // controller.selectedoption.value="";
               //     },
               //     choiceItems: C2Choice.listFrom<int, String>(
               //       source: controller.options5,
               //       value: (i, v) => i,
               //       label: (i, v) => v,
               //     ),
               //   );
               // }),
               SizedBox(height: 30,),
               Container(
                 padding: EdgeInsets.all(5),
                 // margin: EdgeInsets.only(bottom: 30),
                 width: MediaQuery.of(context).size.width * 0.4,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(30),
                   color: Color.fromRGBO(122, 89, 193, 0.5843137254901961),),
                 child: MaterialButton(
                   onPressed: () {
                     if (controller.subcategorylist[0].masterCategory.id == 1) {

                         var com_or_ex = " ";
                         var com_or_ex_id = 0;
                         onclickapply(controller.subcategorylist[5].id,
                             controller.subcategorylist[0].masterCategory.id,
                             com_or_ex, com_or_ex_id);

                     }
                     if (controller.subcategorylist2[0].masterCategory.id == 2) {
                         var com_or_ex = " ";
                         var com_or_ex_id = 0;
                         onclickapply(controller.subcategorylist2[0].id,
                             controller.subcategorylist2[0].masterCategory.id,
                             com_or_ex, com_or_ex_id);

                     }
                     if (controller.subcategorylist3[0].masterCategory.id == 3) {
                         var com_or_ex = " ";
                         var com_or_ex_id = 0;
                         onclickapply(controller.subcategorylist3[0].id,
                             controller.subcategorylist3[0].masterCategory.id,
                             com_or_ex, com_or_ex_id);
                     }
                   },
                     child:
                     Text(
                       "Apply",
                       style: TextStyle(
                         color: Colors.white,
                         fontWeight: FontWeight.bold,
                         fontSize: 20,
                       ),
                     ),
                   )
               ),
             ],
           ),
         )
          // child: Container(
          //   width: MediaQuery.of(context).size.width,
          //   height: MediaQuery.of(context).size.height,
          //   child: ListView(
          //     scrollDirection: Axis.vertical,
          //     physics: BouncingScrollPhysics(),
          //   children: [
          //
          //   ),
          // ),

        ),

      ),
    );
  }
  Future<void>showsubcategory(id)async{
    await controller.showsubcategory(id);
  }
  Future<void>showsubcategory2(id)async{
    await controller.showsubcategory2(id);
  }
  Future<void>showsubcategory3(id)async{
    await controller.showsubcategory3(id);
  }
  Future<void>showpicesinapparel(id)async{
    await controller.showpicesinapparel(id);
  }
  Future<void>showpicesinaccessories(id)async{
    await controller.showpicesinaccessories(id);
  }
  Future<void>showpicesinfootwear(id)async{
    await controller.showpicesinfootwear(id);
  }
  Future<void>showpicesincompany(id)async{
    await controller.showpicesincompany(id);
  }
  Future<void>showpicesinexpert(id)async{
    await controller.showpicesinexpert(id);
  }
  Future<void>showallcompanies()async{
    await controller.showallcompanies();
  }
  Future<void>showallexpert()async{
    await controller.showallexpert();
  }
  Future<void> showdetails(id)async{
    await controller2.showdetails(id);
  }
  void onclickapply(sub,master,com_or_ex,com_or_ex_id)async{
    await controller.onclickapply(sub,master,com_or_ex,com_or_ex_id);
  }



}
