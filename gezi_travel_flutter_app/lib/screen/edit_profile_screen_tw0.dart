import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:gezi_travel_flutter_app/screen/change_password_screen.dart';
import 'package:gezi_travel_flutter_app/utils/constant.dart';

import 'package:google_fonts/google_fonts.dart';

class EditProfileScreenTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: constLighterGrey,
      appBar: getappBar(),
      body: SingleChildScrollView(child: getbody(context)),
    );
  }

  Widget getappBar() {
    return AppBar(
      iconTheme: IconThemeData(color: Colors.black),
      backgroundColor: constLighterGrey,
      elevation: 0,
      leading: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Icon(Icons.arrow_back_ios),
      ),
    );
  }

  Widget getbody(context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(
              'Edit Profile',
              style: GoogleFonts.roboto(
                  fontWeight: FontWeight.bold, fontSize: 30, color: constDark),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Card(
            elevation: 3,
            shadowColor: Colors.grey.shade200,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  ButtonWidget(
                    icon: Icons.mail_outline,
                    text: 'Change Email Address',
                  ),
                  Divider(
                    thickness: 2,
                    color: Colors.grey.shade300,
                  ),
                  ButtonWidget(
                    text: 'Change Password',
                    onPress: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  ChangePasswordScreen()));
                    },
                    icon: Icons.lock_open_sharp,
                  ),
                  Divider(
                    thickness: 2,
                    color: Colors.grey.shade300,
                  ),
                  ButtonWidget(
                    text: 'Social Media Accounts',
                    icon: Icons.share_outlined,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          WidgetButton(
            text: 'Reset in App Purchases',
            textColor: Colors.grey.shade100,
            color: constGreen,
            borderColor: constGreen,
          ),
          SizedBox(
            height: 20,
          ),
          Card(
            elevation: 5,
            shadowColor: Colors.grey.shade200,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  ButtonWidget(
                    icon: Icons.visibility_off_outlined,
                    text: 'Mature Content',
                    container: FlutterSwitch(
                      height: 30,
                      width: 60,
                      activeColor: constGreen,
                      value: true,
                      onToggle: (val) {},
                    ),
                  ),
                  Divider(
                    thickness: 2,
                    color: Colors.grey.shade300,
                  ),
                  ButtonWidget(
                    text: 'Notificationss',
                    icon: Icons.notifications_none,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          WidgetButton(
            text: 'Support',
            color: null,
            textColor: Colors.grey.shade500,
            borderColor: Colors.grey.shade400,
          ),
        ],
      ),
    );
  }
}
