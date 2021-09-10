import 'package:flutter/material.dart';
import 'package:gezi_travel_flutter_app/utils/constant.dart';
import 'package:gezi_travel_flutter_app/utils/last_searched_list.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: constLighterGrey,
      appBar:getappBar(),
      body: SingleChildScrollView(child: getbody(context)),
    );
  }
  Widget getappBar() {
    return AppBar(
      iconTheme: IconThemeData(color: Colors.black),
      backgroundColor: constLighterGrey,
      elevation: 0,
      leading: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 20),
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
              'Profile',
              style: GoogleFonts.roboto(fontWeight: FontWeight.bold,fontSize: 30,color: constDark),
            ),
          ),
          SizedBox(height: 30,),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

            CircleAvatar(backgroundImage: NetworkImage(profileUrl),radius: 60,)  ,
              SizedBox(width: 30,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10,),
                  Text('Jenna DOE',
                     // style: TextStyle(color: constDark,fontWeight: FontWeight.w900,fontSize: 24),
                     style: GoogleFonts.roboto(

                         fontWeight: FontWeight.bold,color: constDark,fontSize: 24)
                  ),
                  SizedBox(height: 8,),
                  Row(
                    children: [
                      Container(

                        padding: EdgeInsets.symmetric(vertical: 30,horizontal: 30),
                        decoration: BoxDecoration(
                          color: constGreen,
                        borderRadius: BorderRadius.circular(10)
                        ),
                        alignment: Alignment.center,

                        child: Text('Follow',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700),),),
                      SizedBox(width: 5,),
                      Container(

                          padding: EdgeInsets.symmetric(vertical: 23,horizontal: 20),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade400,width: 2,),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        alignment: Alignment.center,

                        child: Icon(Icons.edit_outlined,color: Colors.grey.shade400,)),
                    ],
                  )

                ],
              )

            ],),
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text('FOLLOWING',style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey.shade600,fontWeight: FontWeight.w600,letterSpacing: 1),),
                  SizedBox(height: 5,),
                  Text('375',style: GoogleFonts.roboto(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30),),

                ],
              ),

      Column(
        children: [
          Text('FOLLOWERS',style: TextStyle(
              fontSize: 16,
              color: Colors.grey.shade600,fontWeight: FontWeight.w600,letterSpacing: 1),),
          SizedBox(height: 5,),
          Text('4.337',style: GoogleFonts.roboto(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30),),

        ],
      ),

            ],
          ),
          SizedBox(height: 5,),
          Divider(color:Colors.grey.shade400 ,thickness: 2,),
          SizedBox(height: 10,),
          Text('DESCRIPTION',style: GoogleFonts.roboto(
              fontSize: 16,
              color: Colors.black,fontWeight: FontWeight.bold,letterSpacing: 1),),
          SizedBox(height: 10,),
          Text(description,style: GoogleFonts.roboto(
              fontSize: 16,
              color: Colors.grey.shade600,fontWeight: FontWeight.w400,letterSpacing: 1),),
          SizedBox(height: 10,),
          Text('LAST SEARCHED',style: GoogleFonts.roboto(
              fontSize: 16,
              color: Colors.black,fontWeight: FontWeight.bold,letterSpacing: 1),),

          SizedBox(height: 10,),
          Container(
            height: 190,

            child: ListView(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,

              children: List.generate(lastSearched.length, (int index)  {
                print(lastSearched.length);
                return Container(
                  margin: EdgeInsets.all(3),

                  decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 200,
                     height: 120,
                     padding: EdgeInsets.all(5),


                     child: ClipRRect(
                         borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft:Radius.circular(10) ),
                         child: Image.network(lastSearched[index]['image'],fit: BoxFit.cover,)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(lastSearched[index]['name'],style: GoogleFonts.roboto(
                              fontSize: 16,
                              color: Colors.black,fontWeight: FontWeight.bold,letterSpacing: 1)),
                          SizedBox(height: 5,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(Icons.location_on_outlined,color: constGreen,),
                              Text(lastSearched[index]['distance'],style: TextStyle(color: Colors.grey.shade500),)
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),);

              }),
            ),
          )
        ],
      ),
    );
  }
}
