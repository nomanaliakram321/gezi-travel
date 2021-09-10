import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gezi_travel_flutter_app/utils/constant.dart';
import 'package:gezi_travel_flutter_app/utils/last_searched_list.dart';
import 'package:gezi_travel_flutter_app/utils/liked_hotel_liist.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreenTwo extends StatelessWidget {
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

              CircleAvatar(backgroundImage: NetworkImage(profileUrl2),radius: 50,)  ,
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
                  SizedBox(height: 10,),
                  Row(

                    children: [
                      Column(
                        children: [
                          Text('FOLLOWING',style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey.shade600,fontWeight: FontWeight.bold,letterSpacing: 1),),
                          SizedBox(height: 5,),
                          Text('375',style: GoogleFonts.roboto(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 24),),

                        ],
                      ),
                      SizedBox(width: 15,),
                      Column(
                        children: [
                          Text('FOLLOWERS',style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey.shade600,fontWeight: FontWeight.bold,letterSpacing: 1),),
                          SizedBox(height: 5,),
                          Text('4.337',style: GoogleFonts.roboto(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 24),),

                        ],
                      ),

                    ],
                  )

                ],
              )

            ],),
          SizedBox(height: 30,),
          Divider(color:Colors.grey.shade400 ,thickness: 2,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              Icon(CupertinoIcons.square_arrow_up,size: 35),
              Icon(Icons.photo_outlined,size: 35),
              Icon(Icons.favorite_border,color: constGreen,size: 35,),

            ],
          ),
          SizedBox(height: 5,),
          Divider(color:Colors.grey.shade400 ,thickness: 2,),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(

width: MediaQuery.of(context).size.width/1.5,
                padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                decoration: BoxDecoration(
                    color: constGreen,
                    borderRadius: BorderRadius.circular(10)
                ),
                alignment: Alignment.center,

                child: Text('Follow',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700),),),
            ],
          ),



          SizedBox(height: 10,),
          Container(

            height: 300,

            child: ListView(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,

              children: List.generate(likedHOTEL.length, (int index)  {
                print(likedHOTEL.length);
                return Container(
                  margin: EdgeInsets.all(3),

                  decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 200,
                        padding: EdgeInsets.all(5),


                        child: Stack(
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft:Radius.circular(10) ),
                                child: Image.network(likedHOTEL[index]['image'],fit: BoxFit.cover, width: MediaQuery.of(context).size.width, height: 200,)),
                            Positioned(
                               bottom: 10,
                                left: 10,
                                child: Container(
                                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.grey.shade600.withOpacity(0.8)
                                  ),
                              child: Text(likedHOTEL[index]['hotels'],style: TextStyle(color: Colors.white,fontSize: 16),),
                            )),
                            Positioned(
                                top: 10,
                                right: 20,
                                child: Container(
                                  padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.grey.shade300.withOpacity(0.8)
                                  ),
                                  child:Icon(Icons.favorite_border),
                                )),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 10),
                              child: Text(lastSearched[index]['name'],style: GoogleFonts.firaSans(
                                  fontSize: 20,
                                  color: Colors.black,fontWeight: FontWeight.bold,letterSpacing: 1)),
                            ),
                            SizedBox(height: 5,),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(Icons.location_on_outlined,color: constGreen,),
                                Text(likedHOTEL[index]['distance'],style: TextStyle(color: Colors.grey.shade500),)
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
