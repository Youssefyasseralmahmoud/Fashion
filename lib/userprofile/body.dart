// import 'package:flutter/material.dart';
// import 'package:cupertino_icons/cupertino_icons.dart';
// //import 'package:flutter_appss/modules/editprofile/editProfile.dart';
// import 'profile_menu.dart';
// import 'profile_pic.dart';
// import 'package:get/get.dart';
//
// class Body extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       padding: EdgeInsets.symmetric(vertical: 20),
//       child: Column(
//         children: [
//         SizedBox(
//         height: 150,
//         width: 150,
//         child: Stack(
//           fit: StackFit.expand,
//           clipBehavior: Clip.none,
//           children: [
//             CircleAvatar(
//               backgroundImage: AssetImage("images/Ellipse2.png"),
//             ),
//           ],
//         ),
//       ),
//           SizedBox(height: 20),
//           ProfileMenu(
//             text: "My Account",
//             icon: "images/User.svg",
//             press: () {
//               Get.toNamed('/editProfile');
//             },
//           ),
//           ProfileMenu(
//             text: "Favorite",
//             icon: "images/Heart Icon_2.svg",
//             press: () {},
//           ),
//           ProfileMenu(
//               text: "Follow-up Brand",
//               icon: "images/Heart Icon_2.svg",
//               press: () {
//                 Get.toNamed('/followings');
//               }),
//           ProfileMenu(
//             text: "Settings",
//             icon: "images/settings.svg",
//             press: () {},
//           ),
//           ProfileMenu(
//             text: "Log Out",
//             icon: "images/log-out.svg",
//             press: () {},
//           ),
//         ],
//       ),
//     );
//   }
// }
