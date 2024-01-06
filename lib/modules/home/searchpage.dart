import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:untitled4/modules/details/details_controller.dart';
import 'package:untitled4/modules/home/searchpagecontroller.dart';
class Searchpage extends StatefulWidget {

  @override
  State<Searchpage> createState() => _SearchpageState();
}

class _SearchpageState extends State<Searchpage> {
  Searchpage_controller controller=Get.put<Searchpage_controller>(Searchpage_controller());
  Details_controller controller2=Get.put<Details_controller>(Details_controller());
  TextEditingController textcontroller = TextEditingController();
  List listpieces=[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(77, 61, 113, 0.5843137254901961),
        title: Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width*0.7,
              child: TextField(
                onChanged: (value){
                  controller.searchkey=value;

                },
                controller: textcontroller,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    errorBorder: InputBorder.none,
                    enabledBorder:  InputBorder.none,
                    focusedBorder: InputBorder.none,
                    contentPadding: EdgeInsets.all(15),
                    hintText: "Search"
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.white60,
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            GestureDetector(onTap: (){controller.onclicksearch();},child: Icon(Icons.search,color: Colors.white,size: 30,)),
          ],
        )
      ),
      body:
        SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
//           shrinkWrap: true,
// physics: BouncingScrollPhysics(),
               children: [
                  Obx((){
                    controller.change();
                    if(controller.searchlist.isNotEmpty){
                      return GridView.builder(
                          shrinkWrap: true,
                          itemCount: controller.searchlist.length,
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

                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image:
                                            NetworkImage(
                                                "http://10.0.2.2:8000/storage/images/piecesImages/${controller.searchlist[i].image}"),
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
                                              '${controller.searchlist[i].name}',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontFamily: "Merriweather"),
                                            )),
                                      ),
                                      color:
                                      Color.fromRGBO(77, 61, 113, 0.5843137254901961),
                                      width: 60,
                                      height: 50,
                                    ),
                                  ),
                                ],
                              ),
                              onTap: () {
                                showdetails(controller.searchlist[i].id);
                                Get.toNamed("/details");
                              },
                            );
                          });
                    }else if(controller.searchlist2.isNotEmpty){
                      return Obx((){
                        controller.change2();
                        return  ListView.builder(shrinkWrap: true,itemCount: controller.searchlist2.length,itemBuilder: (context,int){
                          return GestureDetector(
                            onTap: (){
                              Get.toNamed("/main_home");
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                height: MediaQuery.of(context).size.height * 0.1,
                                // color: Color.fromRGBO(77, 61, 113, 0.5843137254901961),
                                child: ListTile(
                                    trailing: Text("${controller.searchlist2[int].majorCategory}",style: TextStyle(fontFamily: "Merriweather",color: Color.fromRGBO(77, 61, 113, 0.5843137254901961)),),
                                    leading: Padding(
                                      padding: const EdgeInsets.only(top: 8),
                                      child: CircleAvatar(

                                        radius: 30,
                                        backgroundImage:     NetworkImage(
                                            "http://10.0.2.2:8000/storage/images/companyImages/${controller.searchlist2[int].image}"),
                                        backgroundColor:
                                        Color.fromRGBO(77, 61, 113, 0.5843137254901961),
                                      ),
                                    ),
                                    title: Container(
                                        margin: EdgeInsets.only(top: 15),
                                        child: Text("${controller.searchlist2[int].name}",style: TextStyle(fontFamily: "Merriweather",color:Color.fromRGBO(77, 61, 113, 0.5843137254901961)),))),

                              ),
                            ),
                          );


                        });


                      });
                    }
                    else if(controller.searchlist3.isNotEmpty){
                      return Obx((){
                        controller.change3();
                        return  ListView.builder(shrinkWrap: true,itemCount: controller.searchlist3.length,itemBuilder: (context,int){
                          return GestureDetector(
                            onTap: (){
                              Get.toNamed("/main_home");
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                height: MediaQuery.of(context).size.height * 0.1,
                                // color: Color.fromRGBO(77, 61, 113, 0.5843137254901961),
                                child: ListTile(
                                 //   trailing: Text("${controller.searchlist3[int].majorCategory}",style: TextStyle(fontFamily: "Merriweather",color: Color.fromRGBO(77, 61, 113, 0.5843137254901961)),),
                                    leading: Padding(
                                      padding: const EdgeInsets.only(top: 8),
                                      child: CircleAvatar(

                                        radius: 30,
                                        backgroundImage:     NetworkImage(
                                            "http://10.0.2.2:8000/storage/images/expertImages/${controller.searchlist3[int]['image']}"),
                                        backgroundColor:
                                        Color.fromRGBO(77, 61, 113, 0.5843137254901961),
                                      ),
                                    ),
                                    title: Container(
                                        margin: EdgeInsets.only(top: 15),
                                        child: Text("${controller.searchlist3[int]['name']}",style: TextStyle(fontFamily: "Merriweather",color:Color.fromRGBO(77, 61, 113, 0.5843137254901961)),))),

                              ),
                            ),
                          );


                        });


                      });

                    }
                    else{
                      return Center(
                        child:  Container(margin: EdgeInsets.only(top: 250),child: Text("No Result",style:TextStyle(fontSize:20,fontWeight:FontWeight.normal))),
                      );
                    }




                  }),

                ],
             ),
        ),
         );
  }
  Future<void> showdetails(id)async{
    await controller2.showdetails(id);
  }
}
