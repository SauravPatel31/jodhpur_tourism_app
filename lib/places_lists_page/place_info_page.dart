
import 'package:flutter/material.dart';
import 'package:jodhpur_tourism_app/app_constant_page.dart';
import 'package:jodhpur_tourism_app/places_lists_page/places_page.dart';
import 'package:jodhpur_tourism_app/ui_helper/theam_text_style.dart';

class PlaceInfoPage extends StatelessWidget{
  int myindex;
  PlaceInfoPage({required this.myindex});
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///Place Image..
              Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height/2.1,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.vertical(bottom: Radius.circular(18)),
                        color: Colors.green,
                        image: DecorationImage(image: NetworkImage(jdhdata.famousplace[myindex]["img"]??"Back img"),fit: BoxFit.cover)
                    ),
                  ),
                  Positioned(
                      right: 8,
                      bottom: 0,
                      child: IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border_outlined,size: 50,color: Colors.white,))),
                  Positioned(
                    top: 15,
                    child: IconButton(onPressed: (){
                      Navigator.pop(context);
                    }, icon: Icon(Icons.arrow_back,size: 35,color: Colors.black,)),
                  )
                ],
              ),
              SizedBox(height: 10,),
              ///Place name,time,fees...
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text("Welcome To ${jdhdata.famousplace[myindex]["name"]}",textAlign: TextAlign.start,style: mytext25(textcolor: theamcolor(),myfontweight: FontWeight.w900),),
              ),
              SizedBox(height: 10,),
              ///Time,Prices..
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Text("Timing:- ",style: mytext15(textcolor: Colors.grey,myfontweight: FontWeight.w700),),
                          Text(jdhdata.famousplace[myindex]["time"],style: mytext15(textcolor: Colors.grey,myfontweight: FontWeight.w800),),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Text("Price:- ",style: mytext15(textcolor: Colors.grey,myfontweight: FontWeight.w700),),
                        Text(jdhdata.famousplace[myindex]["ind"]??"Free",style: mytext15(textcolor: Colors.grey,myfontweight: FontWeight.w800),),
                      ],
                    ),
                    Row(
                      children: [
                        Text("INR Price:- ",style: mytext15(textcolor: Colors.grey,myfontweight: FontWeight.w700),),
                        Text(jdhdata.famousplace[myindex]["nir"]??"Free",style: mytext15(textcolor: Colors.grey,myfontweight: FontWeight.w800),),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              ///Description...
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 10),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text("Description",style: mytext20(myfontweight: FontWeight.w900,textcolor: Colors.black87),),
                   SizedBox(height: 5,),
                   Text(jdhdata.famousplace[myindex]["des"],textAlign: TextAlign.justify,style: mytext20(),)
                 ],
               ),
             ),
             
            ]
        ),
      ),
    );
  }

}

