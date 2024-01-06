import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled4/modules/notifications/notification_controller.dart';
class Notifications extends StatelessWidget {
  Notifications_controller controller=Get.put<Notifications_controller>(Notifications_controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(77, 61, 113, 0.5843137254901961),
        title: ListTile(
          leading: Text("Notifications",style: TextStyle(fontFamily: "Merriweather",color: Colors.white,fontSize: 20),),
          trailing: Icon(Icons.notifications_active,color: Colors.white,size: 30,),
        ),
      ),
      body:  Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height  ,
        //child: SingleChildScrollView(
        child: Obx((){
          controller.changeinside();
          return ListView.builder(shrinkWrap: true,itemCount: controller.notificationslist.length,itemBuilder: (context,int){
            return
              GestureDetector(
                onTap: (){
                  if(controller.notificationslist[int].title=="new form"){
                    gotocompany(controller.notificationslist[int].company.id);
                    Get.toNamed("/company_profile");
                  }

                },
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                        "http://10.0.2.2:8000/storage/images/companyImages/${controller
                            .notificationslist[int].company.image}"),
                    backgroundColor:
                    Color.fromRGBO(77, 61, 113, 0.5843137254901961),
                  ),
                  title: Container(
                      margin: EdgeInsets.only(top: 15),
                      child: Text("${controller.notificationslist[int].company.name}",style: TextStyle(fontFamily: "Merriweather"))),
                  trailing: Text("${controller.notificationslist[int].createdAt}",style: TextStyle(fontFamily: "Merriweather"),),
                  subtitle: Container(
                      padding: EdgeInsets.all(10),
                      color: Colors.grey[200],
                      child: Text("${controller.notificationslist[int].details}",style: TextStyle(fontFamily: "Merriweather"),)),
                ),
              );

          },

            // crossAxisAlignment: CrossAxisAlignment.start,



          );
        })
        //   ),
      ),
    );
  }
  Future<void> gotocompany(id)async{
    await controller.gotocompany(id);
  }
}
