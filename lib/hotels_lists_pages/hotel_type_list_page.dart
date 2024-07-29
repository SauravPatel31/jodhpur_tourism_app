
import 'package:flutter/material.dart';
import 'package:jodhpur_tourism_app/hotels_lists_pages/budget_hotel_list_page.dart';
import 'package:jodhpur_tourism_app/hotels_lists_pages/luxury_hotels_page.dart';
import 'package:jodhpur_tourism_app/hotels_lists_pages/resort_hotel_list_page.dart';
import 'package:jodhpur_tourism_app/ui_helper/theam_text_style.dart';

class Hotel_Type_ListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundcolor(),
        appBar: AppBar(
          backgroundColor: backgroundcolor(),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:2,childAspectRatio: 7/10,mainAxisSpacing: 10,crossAxisSpacing: 10),
            children: [
              ///Luxury Hotel
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>LuxuryHotelsPage()));
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
                              child: Image.asset("assets/images/h1.jpg",fit: BoxFit.cover,))),
                      Container(
                        // color: Colors.red,
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        width: double.infinity,
                        child: Column(
                          mainAxisAlignment:MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Luxury Hotels",style: mytext20(textcolor: theamcolor(),myfontweight: FontWeight.w900),),
                            Text("Click and check out..",style: mysubtext15(textcolor: Colors.grey),)
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              ///Resort Hotel..
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ResortHotelListPage()));
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
                            Text("Resort Hotels",style: mytext20(textcolor: theamcolor(),myfontweight: FontWeight.w900),),
                            Text("Click and check out..",style: mysubtext15(textcolor: Colors.grey),)
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              ///Budget Hotels
              InkWell(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>BudgetHotelListPage()));
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
                              child: Image.asset("assets/images/bhotels.jpeg",fit: BoxFit.cover,))),
                      Container(
                        // color: Colors.red,
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        width: double.infinity,
                        child: Column(
                          mainAxisAlignment:MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Budget Hotels",style: mytext20(textcolor: theamcolor(),myfontweight: FontWeight.w900),),
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
    );
  }
}
