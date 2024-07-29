
import 'package:flutter/material.dart';
import 'package:jodhpur_tourism_app/app_constant_page.dart';
import 'package:jodhpur_tourism_app/favorite_page.dart';
import 'package:jodhpur_tourism_app/hotels_lists_pages/hotel_type_list_page.dart';
import 'package:jodhpur_tourism_app/places_lists_page/places_page.dart';
import 'package:jodhpur_tourism_app/street_foods_pages/street_food_list_page.dart';
import 'package:jodhpur_tourism_app/temple_pages/temples_list_page.dart';
import 'package:jodhpur_tourism_app/ui_helper/theam_text_style.dart';
import 'package:jodhpur_tourism_app/video_page.dart';
import 'package:jodhpur_tourism_app/waterpark_pages/waterpark_info_page.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundcolor(),
      body: Padding(
        padding: const EdgeInsets.only(left: 10,right: 10,top: 35),
        child: Column(
          children: [
            ///User Welcome Tital
            SizedBox(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ClipRRect(
                borderRadius: BorderRadius.circular(25),
                      child: Image.asset("assets/images/p.jpg",width: 50,)),
                  SizedBox(width: 10,),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Welcome",style: mytext15(textcolor: Colors.grey.shade500),),
                        Text("Saurav",style: mytext20(textcolor: theamcolor(),myfontweight: FontWeight.w300),),
                      ],
                    ),
                  ),
                  IconButton(onPressed: (){}, icon: Icon(Icons.mark_unread_chat_alt,color: theamcolor(),size: 25,))
                ],
              ),
            ),
            SizedBox(height: 10,),
            ///GridView Famous in Jodhpur...
            Expanded(
              // flex: 10,
              child: SizedBox(
                 height: MediaQuery.of(context).size.height/1.2,
                child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 7/10,mainAxisSpacing: 10,crossAxisSpacing: 10),
                  children: [
                    ///Famous Place..
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>PlacesPage()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: Column(
                          children: [
                           Container(
                               margin: EdgeInsets.all(10),
                               child: ClipRRect(
                                   borderRadius: BorderRadius.circular(15),
                                   child: Image.asset("assets/images/place.jpg",fit: BoxFit.cover,))),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal:10),
                              width: double.infinity,
                              child: Column(
                                // mainAxisAlignment:MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Famous Place",style: mytext20(textcolor: theamcolor(),myfontweight: FontWeight.w900),),
                                  Text("Click and check out..",style: mysubtext15(textcolor: Colors.grey),)
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    ///Famous Hotel..
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Hotel_Type_ListPage()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Column(
                          children: [
                            Container(
                                margin: EdgeInsets.all(10),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Image.asset("assets/images/hotel.jpg",fit: BoxFit.cover,))),
                            Container(
                              // color: Colors.red,
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              width: double.infinity,
                              child: Column(
                                mainAxisAlignment:MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Famous Hotel",style: mytext20(textcolor: theamcolor(),myfontweight: FontWeight.w900),),
                                  Text("Click and check out..",style: mysubtext15(textcolor: Colors.grey),)
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    ///Famous Street Foods..
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>StreetFoodListPage()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Column(
                          children: [
                            Container(
                                margin: EdgeInsets.all(10),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Image.asset("assets/images/Food.jpg",fit: BoxFit.cover,))),
                            Container(
                              // color: Colors.red,
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              width: double.infinity,
                              child: Column(
                                mainAxisAlignment:MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Street Foods",style: mytext20(textcolor: theamcolor(),myfontweight: FontWeight.w900),),
                                  Text("Click and check out..",style: mysubtext15(textcolor: Colors.grey),)
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    ///Famous Temples..
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>TemplesListPage()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Column(
                          children: [
                            Container(
                                margin: EdgeInsets.all(10),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Image.asset("assets/images/temp.jpg",fit: BoxFit.cover,))),
                            Container(
                              // color: Colors.red,
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              width: double.infinity,
                              child: Column(
                                mainAxisAlignment:MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Famous Temples",style: mytext20(textcolor: theamcolor(),myfontweight: FontWeight.w900),),
                                  Text("Click and check out..",style: mysubtext15(textcolor: Colors.grey),)
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    ///Famous WaterPark..
                    InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>WaterparkInfoPage()));
                        },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Column(
                          children: [
                            Container(
                                margin: EdgeInsets.all(10),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Image.asset("assets/images/waterpark.jpeg",fit: BoxFit.cover,width: 530,))),
                            Container(
                              // color: Colors.red,
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              width: double.infinity,
                              child: Column(
                                mainAxisAlignment:MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("WaterPark",style: mytext20(textcolor: theamcolor(),myfontweight: FontWeight.w900),),
                                  Text("Click and check out..",style: mysubtext15(textcolor: Colors.grey),)
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
              
                  ],
                ),
              ),
            ),
            ///Bottom Navigation Bar...
            Container(
              height: 65,
              decoration: BoxDecoration(
                color: Colors.white,
                  borderRadius: BorderRadius.circular(30)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.home,size: 38,color:Colors.grey.shade700,)),
                  IconButton(onPressed: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => VideoPage(),));
                  }, icon: Icon(Icons.video_collection_sharp,size: 38,color:Colors.grey.shade700)),
                  IconButton(onPressed: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => FavoritePage(),));
                  }, icon: Icon(Icons.favorite_border_outlined,size: 38,color:Colors.grey.shade700)),
                  InkWell(child: ClipOval(child: Image.asset("assets/images/p.jpg",width: 38,)))
                ],
              ),
            )
          ],
        ),
      ),

    );
  }

}