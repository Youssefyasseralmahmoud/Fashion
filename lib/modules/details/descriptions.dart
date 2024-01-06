import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled4/modules/details/details_controller.dart';
class Descriptions extends StatelessWidget {
  Details_controller controller=Get.put<Details_controller>(Details_controller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(77, 61, 113, 0.5843137254901961),
        title: ListTile(
          leading: Text("Descriptions",style: TextStyle(fontFamily: "Merriweather",color: Colors.white,fontSize: 20),),
          trailing: Icon(Icons.info_outline,color: Colors.white,size: 30,),
        ),

      ),
      body:
         ListView(
          scrollDirection: Axis.vertical,
          children: [
            SizedBox(height: 20,),
            Container(

              child:Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "name : ",
                      style:
                      TextStyle(fontFamily: "Merriweather", fontSize: 17),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Text(
                    "${controller.detailspieces[0].name}",
                    style:
                    TextStyle(fontFamily: "Merriweather", fontSize: 17),
                  ),
                ],
              ),
              width: MediaQuery.of(context).size.width,
              height: 50,
              decoration: BoxDecoration(
             //   color: Color.fromRGBO(77, 61, 113, 0.5843137254901961),
                border: Border(
                    top: BorderSide(
                        width: 1, color: Colors.black.withAlpha(50)),
                    bottom: BorderSide(
                        width: 1, color: Colors.black.withAlpha(50))),
              ),
            ),
            SizedBox(height: 30,),
            Container(

              child:Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Price :",
                      style:
                      TextStyle(fontFamily: "Merriweather", fontSize: 17),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Text(
                    "${controller.detailspieces[0].price}",
                    style:
                    TextStyle(fontFamily: "Merriweather", fontSize: 17),
                  ),
                  Icon(Icons.attach_money),
                ],
              ),
              width: MediaQuery.of(context).size.width,
              height: 50,
              decoration: BoxDecoration(
             //   color: Color.fromRGBO(77, 61, 113, 0.5843137254901961),
                border: Border(
                    top: BorderSide(
                        width: 1, color: Colors.black.withAlpha(50)),
                    bottom: BorderSide(
                        width: 1, color: Colors.black.withAlpha(50))),
              ),
            ),
            SizedBox(height: 30,),
            Container(

              child:Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Usage :",
                      style:
                      TextStyle(fontFamily: "Merriweather", fontSize: 17),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Text(
                    "${controller.detailspieces[0].usage.name}",
                    style:
                    TextStyle(fontFamily: "Merriweather", fontSize: 17),
                  ),
                ],
              ),
              width: MediaQuery.of(context).size.width,
              height: 50,
              decoration: BoxDecoration(
            //    color: Color.fromRGBO(77, 61, 113, 0.5843137254901961),
                border: Border(
                    top: BorderSide(
                        width: 1, color: Colors.black.withAlpha(50)),
                    bottom: BorderSide(
                        width: 1, color: Colors.black.withAlpha(50))),
              ),
            ),
            SizedBox(height: 30,),
            Container(

              child:Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Season :",
                      style:
                      TextStyle(fontFamily: "Merriweather", fontSize: 17),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Text(
                    "${controller.detailspieces[0].season.name}",
                    style:
                    TextStyle(fontFamily: "Merriweather", fontSize: 17),
                  ),
                ],
              ),
              width: MediaQuery.of(context).size.width,
              height: 50,
              decoration: BoxDecoration(
               // color: Color.fromRGBO(153, 136, 205, 0.5843137254901961),
                border: Border(
                    top: BorderSide(
                        width: 1, color: Colors.black.withAlpha(50)),
                    bottom: BorderSide(
                        width: 1, color: Colors.black.withAlpha(50))),
              ),
            ),
            SizedBox(height: 30,),
            Container(

              child:Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Master-Category :",
                      style:
                      TextStyle(fontFamily: "Merriweather", fontSize: 17),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Text(
                    "${controller.detailspieces[0].masterCategory.name}",
                    style:
                    TextStyle(fontFamily: "Merriweather", fontSize: 17),
                  ),
                ],
              ),
              width: MediaQuery.of(context).size.width,
              height: 50,
              decoration: BoxDecoration(
            //    color: Color.fromRGBO(77, 61, 113, 0.5843137254901961),
                border: Border(
                    top: BorderSide(
                        width: 1, color: Colors.black.withAlpha(50)),
                    bottom: BorderSide(
                        width: 1, color: Colors.black.withAlpha(50))),
              ),
            ),
            SizedBox(height: 30,),
            Container(

              child:Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Sub-Category :",
                      style:
                      TextStyle(fontFamily: "Merriweather", fontSize: 17),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Text(
                    " ${controller.detailspieces[0].subCategory.name}",
                    style:
                    TextStyle(fontFamily: "Merriweather", fontSize: 17),
                  ),
                ],
              ),
              width: MediaQuery.of(context).size.width,
              height: 50,
              decoration: BoxDecoration(
             //   color: Color.fromRGBO(77, 61, 113, 0.5843137254901961),
                border: Border(
                    top: BorderSide(
                        width: 1, color: Colors.black.withAlpha(50)),
                    bottom: BorderSide(
                        width: 1, color: Colors.black.withAlpha(50))),
              ),
            ),
            SizedBox(height: 30,),
            Container(
              child:Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Colors :",
                      style:
                      TextStyle(fontFamily: "Merriweather", fontSize: 17),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Text(
                    "${controller.detailspieces[0].pieceDetails[0].color.name}",
                    style:
                    TextStyle(fontFamily: "Merriweather", fontSize: 17),
                  ),
                ],
              ),
              width: MediaQuery.of(context).size.width,
              height: 50,
              decoration: BoxDecoration(
             //   color: Color.fromRGBO(77, 61, 113, 0.5843137254901961),
                border: Border(
                    top: BorderSide(
                        width: 1, color: Colors.black.withAlpha(50)),
                    bottom: BorderSide(
                        width: 1, color: Colors.black.withAlpha(50))),
              ),
            ),
            SizedBox(height: 30,),
            Container(

              child:Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Sizes :",
                      style:
                      TextStyle(fontFamily: "Merriweather",fontSize: 17),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Text(
                    "${controller.detailspieces[0].pieceDetails[0].size.name}",
                    style:
                    TextStyle(fontFamily: "Merriweather", fontSize: 17),
                  ),
                ],
              ),
              width: MediaQuery.of(context).size.width,
              height: 50,
              decoration: BoxDecoration(
             //   color: Color.fromRGBO(77, 61, 113, 0.5843137254901961),
                border: Border(
                    top: BorderSide(
                        width: 1, color: Colors.black.withAlpha(50)),
                    bottom: BorderSide(
                        width: 1, color: Colors.black.withAlpha(50))),
              ),
            ),

          ],
        ),

    );
  }
}

