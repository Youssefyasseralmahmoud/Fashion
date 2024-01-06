import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled4/modules/details/details_controller.dart';
import 'package:untitled4/modules/home/allpieces_controller.dart';
class Allpieces extends StatelessWidget {
 Allpieces_controller controller=Get.put<Allpieces_controller>(Allpieces_controller());
 Details_controller controller2 =Get.put<Details_controller>(Details_controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("All pieces",style: TextStyle(color: Colors.white,fontFamily: "Merriweather"),),
        backgroundColor:Color.fromRGBO(77, 61, 113, 0.5843137254901961),

      ),
      body: Obx((){
        controller.changeinside();
        // if(controller.inside.value==true){
        return Container(
          width: MediaQuery
              .of(context)
              .size
              .width,
          height: double.infinity,
          child: GridView.builder(
              itemCount: controller.allpieceslist.length,
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
                                        .allpieceslist[i].image}"),
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
                                  '${controller.allpieceslist[i].name}',
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
                    showdetails(controller.allpieceslist[i].id);
                    Get.toNamed("/details");
                  },
                );
              }),
        );


        // }else
        // return Container(
        //   width: 200,
        //   height: 200,
        //   color: Colors.deepPurpleAccent,
        // );
      }),
    );
  }
  Future<void> showdetails(id)async{
    await controller2.showdetails(id);
  }
}
