import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled4/modules/notifications/notification_controller.dart';

class informationCompany extends StatelessWidget {
  Notifications_controller contrroller=Get.put<Notifications_controller>(Notifications_controller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.toNamed('/profileCompany');
          },
          icon: const Icon(Icons.arrow_back, color: Colors.black38),
        ),
        title: const Text(
          'About',
          style: TextStyle(fontSize: 26),
        ),
        // toolbarHeight: MediaQuery.of(context).size.height / 12,
        backgroundColor: Color(0xBD5849CA),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Divider(
              height: 150,
            ),
            ListTile(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              tileColor: Color(0x745849CA),
             // textColor: Colors.white,
            //  iconColor: Colors.white,
              leading: const Icon(Icons.drive_file_rename_outline),
              title: const Text('Name'),
              subtitle:  Text('${contrroller.notificationslist[0].company.name}'),
            ),
            const Divider(
              height: 10,
            ),
            ListTile(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              tileColor: Color(0x745849CA),
            // textColor: Colors.white,
             // iconColor: Colors.white,
              leading: const Icon(Icons.email_outlined),
              title: const Text('Email'),
              subtitle:  Text('${contrroller.notificationslist[0].company.email}'),
            ),
            const Divider(
              height: 10,
            ),
            ListTile(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              tileColor: Color(0x745849CA),
           //   textColor: Colors.white,
            //  iconColor: Colors.white,
              leading: const Icon(Icons.category),
              title: const Text('Major Category'),
              subtitle:  Text('${contrroller.notificationslist[0].company.majorCategory}'),
            ),
            const Divider(
              height: 10,
            ),
            ListTile(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              tileColor: Color(0x745849CA),
           //   textColor: Colors.white,
           //   iconColor: Colors.white,
              leading: const Icon(Icons.date_range_rounded),
              title: const Text('Date of Establishment'),
              subtitle:  Text('${contrroller.notificationslist[0].company.dateOfEstablishment}'),
            ),
            const Divider(
              height: 10,
            ),
            ListTile(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              tileColor: Color(0x745849CA),
           //   textColor: Colors.white,
           //   iconColor: Colors.white,
              leading:  Icon(Icons.location_on_outlined),
              title: const Text('Location'),
              subtitle:  Text('${contrroller.notificationslist[0].company.location}'),
            ),
          ],
        ),
      ),
    );
  }
}
