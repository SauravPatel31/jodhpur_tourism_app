
import 'package:flutter/material.dart';
import 'package:jodhpur_tourism_app/app_constant_page.dart';
import 'package:jodhpur_tourism_app/ui_helper/theam_text_style.dart';

class ResortHotelInfoPage extends StatelessWidget{
  int myindex;
  ResortHotelInfoPage({required this.myindex});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundcolor(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///Hotel Images...
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(12),
                    height: MediaQuery.of(context).size.height/2.1,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child:ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(jdhdata.resorthotel[myindex]["img"],fit: BoxFit.cover,)) ,
                  ),
                  Positioned(
                      right: 13,
                      top: 13,
                      child: IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border,size: 50,color: Colors.black54,))),
                  ///Back Icon Button...
                  Positioned(
                    top: 8,
                    child: IconButton(onPressed: (){
                      Navigator.pop(context);
                    }, icon: Icon(Icons.arrow_back,size: 45,color: Colors.black,)),
                  )
                ],
              ),
              SizedBox(height: 10,),
              ///Hotel Name...
              Text("Welcome to ${jdhdata.resorthotel[myindex]["name"]}",style: mytext25(textcolor: theamcolor(),myfontweight: FontWeight.w900),),
              SizedBox(height: 10,),
              Text("Price:- ${jdhdata.resorthotel[myindex]["price"]}",style: mytext20(myfontweight: FontWeight.w900),),
              SizedBox(height: 5,),
              Text("Location:- ${jdhdata.resorthotel[myindex]["location"]}",style:mytext20(myfontweight: FontWeight.w900),),
              SizedBox(height: 15,),
              Text("About..",style:mytext20(myfontweight: FontWeight.w900),),
              Text(jdhdata.resorthotel[myindex]["about"],textAlign: TextAlign.justify,style: mytext20(),)

            ],
          ),
        ),
      ),
    );
  }

}