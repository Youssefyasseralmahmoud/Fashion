import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
//import 'package:untitled4/modules/FormCompany/Forms.dart';
//import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
//import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:get/get.dart';

import 'package:untitled4/company_profile/Collaction.dart';
import 'package:untitled4/company_profile/items.dart';
import 'package:untitled4/modules/notifications/notification_controller.dart';
//import 'package:smooth_star_rating/smooth_star_rating.dart';
// import 'package:rating_dialog/rating_dialog.dart';
// import 'package:flutter_rating_bar/flutter_rating_bar.dart';


class profileCompany extends StatefulWidget {


  @override
  _profileCompanyState createState() => _profileCompanyState();



}

class _profileCompanyState extends State<profileCompany> {
  Notifications_controller controller=Get.put<Notifications_controller>(Notifications_controller());
  final _formKey = GlobalKey<FormState>();
  bool _isOpen = false;
 // PanelController _panelController = PanelController();
  var _imageList = [
    'images/cloth1.jgp',
    'images/cloth2.jgp',
    'images/cloth3.jgp',
    'images/cloth4.jgp',
    'images/cloth5.jgp',
    'images/fashionssignin.png',

  ];
  double rating =0;

  /// Panel Body


  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: Color(0xFFF1F4F8),

      body: SafeArea(

        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              color: Color(0xFFF5F5F5),
              child: Container(
                width: 390,
                height: 260,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(42, 42, 12, 12),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 86,
                            height: 86,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Image.network(
                                "http://10.0.2.2:8000/storage/images/companyImages${controller
                                    .notificationslist[0].company.image}",
                                fit: BoxFit.cover),
                          ),
                          Expanded(
                            child: Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '${controller.notificationslist[0].company.name}',
                                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 8, 0, 0),
                                    child: Text(
                                      '${controller.notificationslist[0].company.majorCategory}',
                                      style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),


                                    ),
                                  ),
                                ],
                              ),

                            ),
                          ),
                          Container(
                            width: 1,
                            height: 40,
                            color: Colors.grey,
                          ),
                          Expanded(
                            child: Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:  [
                                  Text(
                                    '${controller.notificationslist[0].company.numFollowed}',
                                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                                  ),

                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 8, 0, 0),
                                    child: Text(
                                      'Follwes',
                                      style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),


                                    ),
                                  ),
                                ],
                              ),

                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 24, 5, 12),
                      child: SingleChildScrollView(
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [


                          //  Padding(
                             // padding:  EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                             // child:
                              // FlatButton(
                              //
                              //   onPressed: () => {},
                              //   color: Color(0xBD5849CA),
                              //   textColor: Colors.white,
                              //   shape: RoundedRectangleBorder(
                              //       borderRadius: BorderRadius.circular(30)),
                              //   child: Text(
                              //     '       Follow       ',
                              //     style: TextStyle(
                              //
                              //       fontSize: 16,
                              //
                              //     ),
                              //   ),
                              // ),
                            //),
                            // OutlineButton(
                            //   onPressed: () {
                            //     Get.toNamed('/information_company');
                            //   },
                            //   borderSide: BorderSide(
                            //       color: Color.fromRGBO(48, 24, 82, 0.8352941176470589)),
                            //   shape: RoundedRectangleBorder(
                            //       borderRadius: BorderRadius.circular(30)),
                            //   child: Text(
                            //     '   About   ',
                            //     style: TextStyle(
                            //       fontSize: 18,
                            //     ),
                            //   ),
                            // ),
                            Padding(
                              padding:  EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                              child: Column(
                              children:[
                              IconButton(
                                onPressed: () {evaluat(context);},
                                icon: const Icon(
                                    Icons.star,
                                    color:Colors.deepPurple,
                                  size: 42,
                                ),
                              ),
                                Text('Evaluat'),
                                ]),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: DefaultTabController(
                length: 2,
                initialIndex: 0,
                child: Column(
                  children: [
                    TabBar(
                      labelColor: Colors.black38,

                      indicatorColor:Colors.deepPurple,
                      tabs: [
                        Tab(
                          text: 'Items',
                        ),
                        Tab(
                          text: 'Collactions',
                        ),
                      ],
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Items(),

                            ],
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Collaction(),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )

          ],
        )
        ,

      )
      ,
    );
  }
  evaluat(BuildContext context){
    return showDialog(context: context, builder:(context)=>AlertDialog(
      title: Center(child: Text("Evaluat us",style: TextStyle(fontFamily: "Merriweather",color: Colors.deepPurpleAccent),),),
      content: SingleChildScrollView(
        child: Column(
          children: [
           

            // SmoothStarRating(
            //   allowHalfRating: false,
            //   // onRatingChanged: (value) {
            //   //     rating = value ;
            //   //
            //   // },
            //   starCount: 5,
            //   rating: rating,
            //   size: 40.0,
            //   color: Colors.deepPurpleAccent,
            //   borderColor:  Colors.deepPurpleAccent,
            //   spacing:0.0,
            // ),

            Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text('Rating = '+'$rating',
                    style: TextStyle(fontSize: 22))),
          ],
        ),
      ),
    ));
  }







}