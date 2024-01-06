import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:untitled4/modules/category/category.dart';
import 'package:untitled4/modules/home/Main_Home.dart';
import 'package:untitled4/modules/home/storyview.dart';
import 'package:untitled4/modules/login/login.dart';
import 'package:untitled4/modules/signin/company_signin.dart';
import 'package:untitled4/modules/signin/expert_signin.dart';
import 'package:untitled4/modules/signin/signin.dart';
import 'package:untitled4/modules/notifications/notifications.dart';
import 'package:untitled4/userprofile/profile.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int current=0;
  final screens=[
  Main_Home(),
    Category(),
    Profile(),
    Notifications(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 30,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white10,
        selectedItemColor: Color.fromRGBO(77, 61, 113, 0.6705882352941176),
        unselectedItemColor: Colors.black12,
        currentIndex: current,
        showUnselectedLabels: false,
        onTap: (index) =>setState(() =>current = index

        ),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.house,), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.category), label: "Category"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          BottomNavigationBarItem(icon: Icon(Icons.notifications_active), label: "notification"),
        ],
      ),
      body: screens[current],
    );
  }
  }


