import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled4/userprofile/favorite_controller.dart';
//import 'package:flutter_appss/modules/FavoriteItem/Favorite.dart';

class FavoriteItem extends StatelessWidget {
  Favorite_controller controller=Get.put<Favorite_controller>(Favorite_controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back,
            color: Color.fromRGBO(70, 52, 97, 1.0),
          ),
        ),
        title: const Text(
          'Favorite',
          style: TextStyle(fontSize: 23),
        ),
        backgroundColor: Color.fromRGBO(196, 176, 222, 1.0),
        shape: const RoundedRectangleBorder(
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

           Obx((){
             controller.changeinside();
             return ListView.builder(
                 shrinkWrap: true,
                 itemCount: controller.favolist.length,
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
                                       "http://10.0.2.2:8000/storage/images/piecesImages/${controller
                                           .favolist[index].image}")
                               ),
                               Text('${controller.favolist[index].name}',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 22),),   //brand name
                               FavoriteButton(

                                 isFavorite: true,
                                 // iconDisabledColor: Colors.white,
                                 valueChanged: (_isFavorite) {
                                   print('Is Favorite : $_isFavorite');
                                 },
                               ),


                             ],
                           ),
                         ),
                       ),
                     ),
                   );
                 });
           })

            ],
          ),
        ),
      ),
    );
  }
}
