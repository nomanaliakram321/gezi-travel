import 'package:flutter/material.dart';
import 'package:gezi_travel_flutter_app/screen/add_best_places_screen.dart';
import 'package:gezi_travel_flutter_app/screen/change_password_screen.dart';
import 'package:gezi_travel_flutter_app/screen/edit_profile_screen.dart';
import 'package:gezi_travel_flutter_app/screen/edit_profile_screen_tw0.dart';
import 'package:gezi_travel_flutter_app/screen/profile_screen.dart';
import 'package:gezi_travel_flutter_app/screen/profile_screen_two.dart';
import 'package:gezi_travel_flutter_app/utils/constant.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

          // primarySwatch: constLighterGrey,
          ),
      home: EditProfileScreenTwo(),
    );
  }
}
