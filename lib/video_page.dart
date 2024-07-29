
import 'package:flutter/material.dart';
import 'package:jodhpur_tourism_app/favorite_page.dart';
import 'package:jodhpur_tourism_app/home_page.dart';
import 'package:jodhpur_tourism_app/ui_helper/theam_text_style.dart';

class VideoPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundcolor(),
        body: Column(
          children: [
            Container(
              // color: Colors.red,
              height: MediaQuery.of(context).size.height/1.1,
              child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1,childAspectRatio: 9/16,mainAxisSpacing: 5),
                  itemBuilder: (context, index) {
                   return Container(
                    color: Colors.white,
                     child: Center(child: Icon(Icons.video_collection,size: 50,)),
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
    );
  }

}