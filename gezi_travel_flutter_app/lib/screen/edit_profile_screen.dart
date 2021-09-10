import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gezi_travel_flutter_app/utils/constant.dart';
import 'package:gezi_travel_flutter_app/utils/last_searched_list.dart';
import 'package:gezi_travel_flutter_app/utils/liked_hotel_liist.dart';
import 'package:google_fonts/google_fonts.dart';

class EditProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: constLighterGrey,
      appBar: getappBar(),
      body: SingleChildScrollView(child: getbody(context)),
      bottomSheet: geBottomButton(context),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(7),
                decoration: BoxDecoration(
                    border: Border.all(color: constGreen, width: 3),
                    borderRadius: BorderRadius.circular(150)),
                child: Stack(
                  children: [
                    Image.network(
                      profileUrl,
                      width: 120,
                      height: 120,
                    ),
                    Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.8),
                          borderRadius: BorderRadius.circular(150)),
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 6,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Change Profile Picture',
                style: TextStyle(
                  fontSize: 14,
                  color: constGreen,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                TextfieldWidget(
                  hintText: 'User Name',
                  text: 'jdoe',
                ),
                Divider(
                  thickness: 3,
                  color: Colors.grey.shade300,
                ),
                TextfieldWidget(
                  hintText: 'Gender',
                  icon: Icons.keyboard_arrow_down,
                ),
                Divider(
                  thickness: 3,
                  color: Colors.grey.shade300,
                ),
                TextfieldWidget(
                  hintText: 'Location',
                  text: 'Torronto, Canada',
                ),
                Divider(
                  thickness: 3,
                  color: Colors.grey.shade300,
                ),
                TextfieldWidget(
                  hintText: 'E-mail Address',
                  text: 'jenna@doe.com',
                ),
              ],
            ),
          ),
          Divider(
            thickness: 8,
            color: Colors.grey.shade300,
          ),
          Container(
            height: 55,
            color: constLighterGrey,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width / 1.2,
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  alignment: Alignment.center,
                  child: Text(
                    'Delete Account',
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.redAccent.shade100,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          Divider(
            thickness: 8,
            color: Colors.grey.shade300,
          ),
          SizedBox(
            height: 100,
          ),
        ],
      ),
    );
  }

  Widget geBottomButton(BuildContext context) {
    return Container(
      height: 100,
      color: constLighterGrey,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 60,
            width: MediaQuery.of(context).size.width / 1.2,
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            decoration: BoxDecoration(
                color: constGreen, borderRadius: BorderRadius.circular(10)),
            alignment: Alignment.center,
            child: Text(
              'Save Changes',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
            ),
          ),
        ],
      ),
    );
  }
}

class TextfieldWidget extends StatelessWidget {
  final String hintText;
  final String text;
  final IconData icon;

  const TextfieldWidget({
    this.hintText,
    this.icon,
    this.text,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 5, top: 5),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              cursorColor: Colors.grey.shade400,
              decoration: InputDecoration(
                hintText: hintText,
                border: InputBorder.none,
                hintStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade500),
              ),
            ),
          ),
          text != null
              ? Text(
                  text,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade300),
                )
              : Icon(
                  icon,
                  color: Colors.grey.shade400,
                  size: 34,
                )
        ],
      ),
    );
  }
}
