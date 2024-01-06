import 'dart:async';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class StoryView extends StatefulWidget {
  const StoryView({Key? key}) : super(key: key);

  @override
  State<StoryView> createState() => _StoryViewState();
}

class _StoryViewState extends State<StoryView> {
  double percent= 0.0;
  late Timer _timer;
  void starttimer(){
    _timer=Timer.periodic(Duration(microseconds: 10), (timer) {
      setState(() {
        percent+=0.001;
        if(percent>1){
          _timer.cancel();
          Get.offNamed("/main_home");
        }
      });
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    starttimer();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/cloth2.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 36.0, horizontal: 8.0),
            child: Column(
              children: [
                LinearProgressIndicator(
                  value:percent ,
                ),
                SizedBox(height: 8.0,),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("images/cloth2.jpg"),
                      radius: 30.0,
                      
                    ),
                    SizedBox(width: 8.0,),
                    Text("Adidas",style: TextStyle(color: Colors.white,fontSize: 18.0),)
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
