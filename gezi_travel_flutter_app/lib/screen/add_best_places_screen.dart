import 'package:flutter/material.dart';
import 'package:gezi_travel_flutter_app/utils/constant.dart';
import 'package:google_fonts/google_fonts.dart';

class AddBestPlacesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: constLighterGrey,
      appBar: getappBar(),
      body: getbody(),
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
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: Icon(Icons.menu),
        )
      ],
    );
  }

  Widget getbody() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(
              'Best Places',
              style: GoogleFonts.roboto(
                  fontWeight: FontWeight.bold, fontSize: 30, color: constDark),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Expanded(
                  child: TextButton(
                child: Text('FAVORITES',
                    style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w600, color: Colors.white)),
                style: TextButton.styleFrom(
                  backgroundColor: constGreen,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                ),
                onPressed: () {},
              )),
              SizedBox(
                width: 6,
              ),
              Expanded(
                  child: TextButton(
                child: Text('LAST WATCHED',
                    //style: TextStyle(color: constGreen),
                    style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w600, color: constGreen)),
                style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    backgroundColor: Colors.white),
                onPressed: () {},
              )),
            ],
          ),
          Expanded(
              child: Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Lets Add Places!',
                    //style: TextStyle(color: constGreen),
                    style: GoogleFonts.lato(
                        fontWeight: FontWeight.w900,
                        color: constDark,
                        fontSize: 17)),
                SizedBox(
                  height: 10,
                ),
                Text('Press the heart button to\n add a place.',
                    textAlign: TextAlign.center,
                    //style: TextStyle(color: constGreen),
                    style: GoogleFonts.lato(color: Colors.grey, fontSize: 16)),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
