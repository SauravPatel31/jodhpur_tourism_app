
import 'package:flutter/material.dart';
import 'package:jodhpur_tourism_app/app_constant_page.dart';
import 'package:jodhpur_tourism_app/ui_helper/theam_text_style.dart';

class TempleInfoPage extends StatelessWidget{
  int myindex;
  TempleInfoPage({required this.myindex});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///Temple Image..
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height/2.1,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.vertical(bottom: Radius.circular(18)),
                      color: Colors.green,
                      image: DecorationImage(image: AssetImage(jdhdata.temple[myindex]["img"]??"Back img"),fit: BoxFit.cover)
                  ),
                ),
                Positioned(
                    right: 8,
                    bottom: 0,
                    child: IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border_outlined,size: 50,color: Colors.white,))),
                IconButton(onPressed: (){
                  Navigator.pop(context);
                }, icon: Icon(Icons.arrow_back,size: 35,color: Colors.black,))
              ],
            ),
            ///Temple Name...
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Text(jdhdata.temple[myindex]["name"],style: mytext25(myfontweight: FontWeight.w900,textcolor: theamcolor()),),
            ),
            SizedBox(height: 15,),
            ///Location...
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Text("Location:- ${jdhdata.temple[myindex]["location"]}",style: mytext15(textcolor: Colors.black54,myfontweight: FontWeight.w700),),
            ),
            SizedBox(height: 10,),
            ///History...
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Text("History..",style: mytext15( textcolor: Colors.black54,myfontweight: FontWeight.w500),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Text(jdhdata.temple[myindex]["history"],textAlign: TextAlign.justify,style: mytext15(textcolor: Colors.black54,),),
            )

            

          ]
      ),
    );

  }

}