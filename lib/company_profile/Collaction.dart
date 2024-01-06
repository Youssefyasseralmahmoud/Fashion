import 'dart:ui';

import 'package:flutter/material.dart';
class Collaction extends StatelessWidget {
  const Collaction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Flexible(child:  ListView.builder(
        itemCount: 4,
        itemBuilder: (BuildContext contex, int index) {
          return CollactionCard(index: index,);
        }));
  }
}
class CollactionCard extends StatelessWidget {
  final int index;
  const CollactionCard({Key? key,
    required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      GestureDetector(
        onTap: () {},
     child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
        child: Container(
          width: 300,
          height: 300,
          decoration: BoxDecoration(
            color:Colors.black,
            boxShadow: [
              BoxShadow(
                blurRadius: 4,
                color: Color(0x1F000000),
              )
            ],
            borderRadius: BorderRadius.circular(8),
          ),
          child: Container(
            width: 150,
            child: Stack(
              children: [
                Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset('images/white.png' , fit: BoxFit.cover,height: 300,width: 390,),


                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(1, 1),
                  child: ClipRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: 5,
                        sigmaY: 2,
                      ),
                      child: Container(
                        width: double.infinity,
                        height: 50,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Colors.transparent, Color(0xBD5849CA)],
                            stops: [0, 1],
                            begin: AlignmentDirectional(0, -1),
                            end: AlignmentDirectional(0, 1),
                          ),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(8),
                            bottomRight: Radius.circular(8),
                            topLeft: Radius.circular(0),
                            topRight: Radius.circular(0),
                          ),
                        ),
                        alignment: AlignmentDirectional(-1, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children:  [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
                              child: Text(
                                'Colaction name',
                                style: TextStyle(fontSize: 22,fontWeight: FontWeight.normal),



                              ),
                            ),

                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
     ),
      );

  }
}
