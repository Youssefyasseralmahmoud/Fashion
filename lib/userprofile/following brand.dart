import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled4/userprofile/following_brand_controller.dart';

//import 'MyFollowBrand.dart';

class followings extends StatelessWidget {
  Following_controller controller=Get.put<Following_controller>(Following_controller());
  var _imageList = [
    'images/Ellipse2.png',
    'images/Ellipse2.png',
    'images/Ellipse2.png',
    'images/Ellipse2.png',
    'images/Ellipse2.png',
    'images/Ellipse2.png',
    'images/Ellipse2.png',
  ];

  final colorwhite = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
           // Get.toNamed('/profile');
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Color.fromRGBO(70, 52, 97, 1.0),
          ),
        ),
        title: Text(
          'Followings',
          style: TextStyle(fontSize: 23),
        ),

        backgroundColor: Color.fromRGBO(196, 176, 222, 1.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
               Divider(
                height: 0,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height:MediaQuery.of(context).size.height,
                child: Obx((){
                  controller.changeinside();
                  return ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: controller.followinglist.length,
                      itemBuilder: (BuildContext contex, int index) {
                        return  Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 5),
                          child: GestureDetector(
                            onTap: () {},
                            child: Card(
                              clipBehavior: Clip.antiAlias,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(7, 7, 7, 7),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    CircleAvatar(
                                        radius: 40,
                                        backgroundImage: NetworkImage(
                                            "http://10.0.2.2:8000/storage/images/companyImages/${controller
                                                .followinglist[index].company!.image}")
                                    ),
                                    Text('${controller.followinglist[index].company!.name}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),   //brand name



                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      });
                })
              ),
               Divider(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
