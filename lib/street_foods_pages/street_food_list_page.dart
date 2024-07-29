
import 'package:flutter/material.dart';
import 'package:jodhpur_tourism_app/app_constant_page.dart';
import 'package:jodhpur_tourism_app/ui_helper/theam_text_style.dart';

class StreetFoodListPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: backgroundcolor(),
     appBar:AppBar(
       title: Text("Street Foods In Jodhpur",style: mytext20(myfontweight: FontWeight.w900),),
       backgroundColor: backgroundcolor(),
     ) ,
     body: Padding(
       padding: const EdgeInsets.symmetric(horizontal: 10),
       child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1,childAspectRatio: 8/9,mainAxisSpacing: 20),
           itemBuilder: (_,index){
            return Stack(
              children: [
                Container(
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
                              child: Image.network(jdhdata.food[index]["img"]??"food image!!",fit: BoxFit.cover,))),
                      Container(
                        // color: Colors.red,
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        width: double.infinity,
                        child: Column(
                          mainAxisAlignment:MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Name:- ${jdhdata.food[index]["foodname"]??"Food Name"}",style: mytext15(textcolor: theamcolor(),myfontweight: FontWeight.w900),),
                            Text("Price:- ${jdhdata.food[index]["price"]??"price"} ",style: mysubtext15(textcolor: Colors.grey.shade700),),
                            Text("Location:- ${jdhdata.food[index]["location"]??"location"} ",style: mysubtext15(textcolor: Colors.grey.shade700),),
                            Text("Area:- ${jdhdata.food[index]["area"]??"area"} ",style: mysubtext15(textcolor: Colors.grey.shade700),),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                    top: 10,
                    right: 10,
                    child: IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border_outlined,size: 50,color: Colors.black54,)))
              ],
            );
           },
        itemCount: jdhdata.food.length,
       ),
     ),
   );
  }

}