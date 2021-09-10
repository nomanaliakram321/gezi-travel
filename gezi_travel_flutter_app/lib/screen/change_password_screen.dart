import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gezi_travel_flutter_app/utils/constant.dart';
import 'package:google_fonts/google_fonts.dart';

class ChangePasswordScreen extends StatefulWidget {
  ChangePasswordScreen({Key key}) : super(key: key);

  @override
  _ChangePasswordScreenState createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: constLighterGrey,
      appBar: getappBar(),
      body: getbody(context),
      //child: Text('jj'),
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
              'Change Password',
              style: GoogleFonts.roboto(
                  fontWeight: FontWeight.bold, fontSize: 30, color: constDark),
            ),
          ),
          Spacer(),
          Spacer(),
          Spacer(),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                PasswordWidget(
                    text: 'New Password',
                    textColor: Colors.grey.shade300,
                    container: Icon(
                      CupertinoIcons.check_mark,
                      color: Colors.greenAccent,
                    )),
                SizedBox(
                  height: 4,
                ),
                PasswordWidget(
                    text: 'Confirm Password',
                    textColor: Colors.grey.shade300,
                    container: Icon(
                      Icons.close,
                      color: Colors.redAccent,
                    )),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          WidgetButton(
            text: 'Confirm',
            onpress: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) =>
                      ChangePasswordDialogue(context));
              ;
            },
            color: constGreen,
            textColor: Colors.grey.shade100,
            borderColor: constGreen,
          ),
          Spacer(),
        ],
      ),
    );
  }

  Widget ChangePasswordDialogue(context) {
    return Dialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0)), //this right here
      child: Container(
        height: 400.0,
        width: 300.0,
        child: ColorFiltered(
          colorFilter:
              ColorFilter.mode(Colors.white.withOpacity(0.2), BlendMode.darken),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  '',
                  style: TextStyle(color: Colors.red),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  '',
                  style: TextStyle(color: Colors.red),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 120.0)),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    'Your Password Changed',
                    style: TextStyle(
                        color: constDark,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
