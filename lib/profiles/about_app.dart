import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:untitled4/profiles/about_app_controller.dart';
class About_app extends StatelessWidget {

  //const About_app({Key? key}) : super(key: key);
About_app_controller controller = Get.put<About_app_controller>(About_app_controller());
_showchoice(BuildContext context,int id){
  return showDialog(context: context, builder:(context)=> AlertDialog(
    title: Center(child: Text("Are You Sure ?",style: TextStyle(fontFamily: "Merriweather"),)),
    content: SingleChildScrollView(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: GestureDetector(

              onTap: (){

                block(context,id);
              },
              child: Container(
                width: 60,
                height: 30,
                child: Center(child: Icon(Icons.check_sharp),),
                decoration:BoxDecoration(color: Color.fromRGBO(77, 61, 113, 0.5843137254901961),borderRadius: BorderRadius.circular(10)),
              ),
            ),
          ),
          SizedBox(width: 30,),
          Center(
            child: GestureDetector(
              onTap: (){
                Navigator.pop(context);

              },
              child: Container(
                width: 60,
                height: 30,
                child: Center(child: Icon(Icons.clear),),
                decoration:BoxDecoration(color: Color.fromRGBO(77, 61, 113, 0.5843137254901961),borderRadius: BorderRadius.circular(10)),
              ),
            ),
          ),

        ],
      ),
    ),
  ));
}
_showchoice2(BuildContext context,int id){
  return showDialog(context: context, builder:(context)=> AlertDialog(
    title: Center(child: Text("Are You Sure ?",style: TextStyle(fontFamily: "Merriweather"),)),
    content: SingleChildScrollView(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: GestureDetector(

              onTap: (){

                block2(context,id);
              },
              child: Container(
                width: 60,
                height: 30,
                child: Center(child: Icon(Icons.check_sharp),),
                decoration:BoxDecoration(color: Color.fromRGBO(77, 61, 113, 0.5843137254901961),borderRadius: BorderRadius.circular(10)),
              ),
            ),
          ),
          SizedBox(width: 30,),
          Center(
            child: GestureDetector(
              onTap: (){
                Navigator.pop(context);

              },
              child: Container(
                width: 60,
                height: 30,
                child: Center(child: Icon(Icons.clear),),
                decoration:BoxDecoration(color: Color.fromRGBO(77, 61, 113, 0.5843137254901961),borderRadius: BorderRadius.circular(10)),
              ),
            ),
          ),

        ],
      ),
    ),
  ));
}
_showchoice3(BuildContext context,int id){
  return showDialog(context: context, builder:(context)=> AlertDialog(
    title: Center(child: Text("Are You Sure ?",style: TextStyle(fontFamily: "Merriweather"),)),
    content: SingleChildScrollView(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: GestureDetector(

              onTap: (){

                unblock(context,id);
              },
              child: Container(
                width: 60,
                height: 30,
                child: Center(child: Icon(Icons.check_sharp),),
                decoration:BoxDecoration(color: Color.fromRGBO(77, 61, 113, 0.5843137254901961),borderRadius: BorderRadius.circular(10)),
              ),
            ),
          ),
          SizedBox(width: 30,),
          Center(
            child: GestureDetector(
              onTap: (){
                Navigator.pop(context);

              },
              child: Container(
                width: 60,
                height: 30,
                child: Center(child: Icon(Icons.clear),),
                decoration:BoxDecoration(color: Color.fromRGBO(77, 61, 113, 0.5843137254901961),borderRadius: BorderRadius.circular(10)),
              ),
            ),
          ),

        ],
      ),
    ),
  ));
}
_showchoice4(BuildContext context,int id){
  return showDialog(context: context, builder:(context)=> AlertDialog(
    title: Center(child: Text("Are You Sure ?",style: TextStyle(fontFamily: "Merriweather"),)),
    content: SingleChildScrollView(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: GestureDetector(

              onTap: (){

                unblockexpert(context,id);
              },
              child: Container(
                width: 60,
                height: 30,
                child: Center(child: Icon(Icons.check_sharp),),
                decoration:BoxDecoration(color: Color.fromRGBO(77, 61, 113, 0.5843137254901961),borderRadius: BorderRadius.circular(10)),
              ),
            ),
          ),
          SizedBox(width: 30,),
          Center(
            child: GestureDetector(
              onTap: (){
                Navigator.pop(context);

              },
              child: Container(
                width: 60,
                height: 30,
                child: Center(child: Icon(Icons.clear),),
                decoration:BoxDecoration(color: Color.fromRGBO(77, 61, 113, 0.5843137254901961),borderRadius: BorderRadius.circular(10)),
              ),
            ),
          ),

        ],
      ),
    ),
  ));
}
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        drawer: Drawer(
          child: Column(
            children: [
              SizedBox(height: 40,),
              Center(
                child: Text("STATS",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.deepPurple[400]),),

              ),
              SizedBox(height: 30,),
            Obx((){
              controller.changeinside2();
              return   ListTile(

                title: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Expert-number",style: TextStyle(fontFamily: "Merriweather"),),
                ),
                subtitle: Text("${controller.count_expert}",style: TextStyle(fontWeight: FontWeight.bold),),
                trailing: Icon(Icons.person,size: 30,color: Colors.deepPurple[400],),
              );
            }),
              Divider(thickness: 2,height: 0.001,),
            Obx((){
              controller.changeinside();
              return   ListTile(

                title: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Companies-number",style: TextStyle(fontFamily: "Merriweather"),),
                ),
                subtitle: Text("${controller.count_company}",style: TextStyle(fontWeight: FontWeight.bold),),
                trailing: Icon(Icons.stars,size: 30,color: Colors.deepPurple[400]),
              );
            }),
              Divider(thickness: 2,height: 0.001,),
           Obx((){
             controller.changeinside3();
             return    ListTile(

               title: Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Text("Users-number",style: TextStyle(fontFamily: "Merriweather"),),
               ),
               subtitle: Text("${controller.count_user}",style: TextStyle(fontWeight: FontWeight.bold),),
               trailing: Icon(Icons.supervised_user_circle,size: 30,color: Colors.deepPurple[400]),
             );
           }),
              Divider(thickness: 2,height: 0.001,),
              Obx((){
                controller.changeinside4();
                return ListTile(

                  title: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Blocked_Experts-number",style: TextStyle(fontFamily: "Merriweather"),),
                  ),
                  subtitle: Text("${controller.count_block_expert}",style: TextStyle(fontWeight: FontWeight.bold),),
                  trailing: Icon(Icons.block,size: 30,color: Colors.deepPurple[400]),
                );
              }),
              Divider(thickness: 2,height: 0.001,),
              Obx((){
                controller.changeinside5();
                return ListTile(

                  title: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Blocked_Company-number",style: TextStyle(fontFamily: "Merriweather"),),
                  ),
                  subtitle: Text("${controller.count_block_company}",style: TextStyle(fontWeight: FontWeight.bold),),
                  trailing: Icon(Icons.block,size: 30,color: Colors.deepPurple[400]),
                );
              }),
              Divider(thickness: 2,height: 0.001,),
            ],
          ),
        ),
        appBar: AppBar(
          bottom: TabBar(
            labelColor: Colors.white,
            indicatorColor: Colors.white,
            tabs: [
              Tab(
                child: Text(
                  "Compamies",
                  style: TextStyle(fontFamily: "Merriweather"),
                ),
              ),
              Tab(
                child: Text(
                  "Experts",
                  style: TextStyle(fontFamily: "Merriweather"),
                ),
              ),
              Tab(
                child: Text(
                  "Blocked Companies",
                  style: TextStyle(fontFamily: "Merriweather"),
                ),
              ),
              Tab(
                child: Text(
                  "Blocked Experts",
                  style: TextStyle(fontFamily: "Merriweather"),
                ),
              ),
            ],
            isScrollable: true,
          ),
          backgroundColor: Color.fromRGBO(77, 61, 113, 0.5843137254901961),
          title: Text(
            "About App",
            style: TextStyle(color: Colors.white, fontFamily: "Merriweather"),
          ),
        ),
        body: Obx((){
          controller.changeinside6();
          return TabBarView(
            children: [

             // Obx((){
               // controller.changeinside6();
             //   return
          ListView.builder(itemCount: controller.showcompanies.length,itemBuilder: (context,int){
                  return GestureDetector(
                    onTap: (){
                      Get.toNamed("/main_home");
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Container(
                        margin: EdgeInsets.only(top:10),
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.1,
                        color: Color.fromRGBO(77, 61, 113, 0.5843137254901961),
                        child: ListTile(
                          trailing:   Container(
                              padding: EdgeInsets.all(5),
                              // margin: EdgeInsets.only(bottom: 30),
                              width:100,
                              height: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Color.fromRGBO(77, 61, 113, 0.5843137254901961),),
                              child: Obx((){

                                return MaterialButton(
                                  onPressed: ()=>_showchoice(context,controller.showcompanies[int].id),
                                  //controller.changeblock();

                                  child: Text(

                                    "${controller.block}",
                                    style: TextStyle(

                                      fontWeight: FontWeight.bold,

                                    ),
                                  ),
                                );
                              })
                          ),
                          leading: Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: CircleAvatar(

                              radius: 30,
                              backgroundImage: NetworkImage(
                                  "http://10.0.2.2:8000/storage/images/companyImages/${controller
                                      .showcompanies[int].image}"),
                              backgroundColor:
                              Color.fromRGBO(77, 61, 113, 0.5843137254901961),
                            ),
                          ),
                          title: Container(
                              margin: EdgeInsets.only(top: 15),
                              child: Text("${controller.showcompanies[int].name}",style: TextStyle(fontFamily: "Merriweather",color: Colors.white))),

                        ),
                      ),
                    ),
                  );
                },
                ),
            //  }),

           //   Obx((){
             //   controller.changeinside7();
             //   return
    ListView.builder(itemCount: controller.showexperts.length,itemBuilder: (context,int){
                  return GestureDetector(
                    onTap: (){
                      Get.toNamed("/main_home");
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Container(
                        margin: EdgeInsets.only(top:10),
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.1,
                        color: Color.fromRGBO(77, 61, 113, 0.5843137254901961),
                        child: ListTile(
                          trailing:   Container(
                            padding: EdgeInsets.all(5),
                            // margin: EdgeInsets.only(bottom: 30),
                            width:100,
                            height: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Color.fromRGBO(77, 61, 113, 0.5843137254901961),),
                            child: MaterialButton(
                              onPressed: ()=>_showchoice2(context,controller.showexperts[int].id)
                              ,
                              child: Text(
                                "Block",
                                style: TextStyle(

                                  fontWeight: FontWeight.bold,

                                ),
                              ),
                            ),
                          ),
                          leading: Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: CircleAvatar(

                              radius: 30,
                              backgroundImage: NetworkImage(
                                  "http://10.0.2.2:8000/storage/images/expertImages/${controller
                                      .showexperts[int].image}"),
                              backgroundColor:
                              Color.fromRGBO(77, 61, 113, 0.5843137254901961),
                            ),
                          ),
                          title: Container(
                              margin: EdgeInsets.only(top: 15),
                              child: Text("${controller.showexperts[int].name}",style: TextStyle(fontFamily: "Merriweather",color: Colors.white))),

                        ),
                      ),
                    ),
                  );
                },
                ),
             // }),
            //  Obx((){
               // controller.changeinside8();
               // return
    ListView.builder(itemCount: controller.blockcompanies.length,itemBuilder: (context,int){
                  return GestureDetector(
                    onTap: (){
                      Get.toNamed("/main_home");
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Container(
                        margin: EdgeInsets.only(top:10),
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.1,
                        color: Color.fromRGBO(77, 61, 113, 0.5843137254901961),
                        child: ListTile(
                          trailing:   Container(
                            padding: EdgeInsets.all(5),
                            // margin: EdgeInsets.only(bottom: 30),
                            width:100,
                            height: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Color.fromRGBO(77, 61, 113, 0.5843137254901961),),
                            child: MaterialButton(
                              onPressed: ()=>_showchoice3(context,controller.blockcompanies[int].id)
                              ,
                              child: Text(
                                "UnBlock",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,

                                ),
                              ),
                            ),
                          ),
                          leading: Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: CircleAvatar(

                              radius: 30,
                              backgroundImage: NetworkImage(
                                  "http://10.0.2.2:8000/storage/images/companyImages/${controller
                                      .blockcompanies[int].image}"),
                              backgroundColor:
                              Color.fromRGBO(77, 61, 113, 0.5843137254901961),
                            ),
                          ),
                          title: Container(
                              margin: EdgeInsets.only(top: 15),
                              child: Text("${controller.blockcompanies[int].name}",style: TextStyle(fontFamily: "Merriweather",color: Colors.white))),

                        ),
                      ),
                    ),
                  );
                },
                ),
          //    }),
           //   Obx((){
              //  controller.changeinside9();
               // return
    ListView.builder(itemCount:controller.blockexperts.length,itemBuilder: (context,int){
                  return GestureDetector(
                    onTap: (){
                      Get.toNamed("/main_home");
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Container(
                        margin: EdgeInsets.only(top:10),
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.1,
                        color: Color.fromRGBO(77, 61, 113, 0.5843137254901961),
                        child: ListTile(
                          trailing:   Container(
                            padding: EdgeInsets.all(5),
                            // margin: EdgeInsets.only(bottom: 30),
                            width:100,
                            height: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Color.fromRGBO(77, 61, 113, 0.5843137254901961),),
                            child: MaterialButton(
                              onPressed: ()=>_showchoice4(context,controller.blockexperts[int].id),
                              child: Text(
                                "UnBlock",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,

                                ),
                              ),
                            ),
                          ),
                          leading: Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: CircleAvatar(

                              radius: 30,
                              backgroundImage: NetworkImage(
                                  "http://10.0.2.2:8000/storage/images/expertImages/${controller
                                      .blockexperts[int].image}"),
                              backgroundColor:
                              Color.fromRGBO(77, 61, 113, 0.5843137254901961),
                            ),
                          ),
                          title: Container(
                              margin: EdgeInsets.only(top: 15),
                              child: Text("${controller.blockexperts[int].name}",style: TextStyle(fontFamily: "Merriweather",color: Colors.white))),

                        ),
                      ),
                    ),
                  );
                },
                ),
             //}),
            ],
          );
        })
      ),
    );;
  }
Future<void>block(context,id)async{
  await controller.blockcompany(id);
  if(controller.blockstatus==true){
    EasyLoading.showSuccess(controller.message,dismissOnTap: true);
    Navigator.pop(context);
  }else{
    EasyLoading.showError(controller.message,dismissOnTap: true);
  }
}
Future<void>block2(context,id)async{
  await controller.blockexpert(id);
  if(controller.blockexpertstatus==true){
    EasyLoading.showSuccess(controller.message,dismissOnTap: true);
    Navigator.pop(context);
  }else{
    EasyLoading.showError(controller.message,dismissOnTap: true);
  }
}
Future<void>unblock(context,id)async{
  await controller.unblockcompany(id);
  if(controller.unblockcompanystatus==true){
    EasyLoading.showSuccess(controller.message,dismissOnTap: true);
    Navigator.pop(context);
  }else{
    EasyLoading.showError(controller.message,dismissOnTap: true);
  }
}
Future<void>unblockexpert(context,id)async{
  await controller.unblockexpert(id);
  if(controller.unblockexpertstatus==true){
    EasyLoading.showSuccess(controller.message,dismissOnTap: true);
    Navigator.pop(context);
  }else{
    EasyLoading.showError(controller.message,dismissOnTap: true);
  }
}
}
