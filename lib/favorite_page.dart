
import 'package:flutter/material.dart';
import 'package:jodhpur_tourism_app/ui_helper/theam_text_style.dart';
import 'package:jodhpur_tourism_app/video_page.dart';

import 'home_page.dart';

class FavoritePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundcolor(),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height/1.1,
            child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1,childAspectRatio: 1/1,mainAxisSpacing: 5,crossAxisSpacing: 5),
              itemBuilder: (context, index) {
                return Container(
                  color: Colors.white,
                  child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Your Favorite Place,hotel etc.",style: mytext20(),),
                      Icon(Icons.favorite_border_outlined,size: 50,),
                    ],
                  )),
                );
              },
              itemCount: 10,
            ),
          ),
          ///Bottom NavigationBar
          Container(
            height: 65,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage(),));
                }, icon: Icon(Icons.home,size: 38,color:Colors.grey.shade700,)),
                IconButton(onPressed: (){
                    Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => VideoPage(),));
                }, icon: Icon(Icons.video_collection_sharp,size: 38,color:Colors.grey.shade700)),
                IconButton(onPressed: (){

                }, icon: Icon(Icons.favorite_border_outlined,size: 38,color:Colors.grey.shade700)),
                InkWell(child: ClipOval(child: Image.asset("assets/images/p.jpg",width: 38,)))
              ],
            ),
          )
        ],
      ),
    );

  }

}