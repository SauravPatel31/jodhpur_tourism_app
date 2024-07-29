
import 'package:flutter/material.dart';
import 'package:jodhpur_tourism_app/app_constant_page.dart';
import 'package:jodhpur_tourism_app/ui_helper/theam_text_style.dart';

class WaterparkInfoPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundcolor(),
      appBar: AppBar(
        title: Text("Water Parks"),
        backgroundColor: backgroundcolor(),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1,childAspectRatio: 8/8,mainAxisSpacing: 20),
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
                              child: Image.asset(jdhdata.waterparkdata[index]["img"]??"food image!!",fit: BoxFit.cover,))),
                      Container(
                        // color: Colors.red,
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Name:- ${jdhdata.waterparkdata[index]["name"]??"WaterPark Name"}",style: mytext15(textcolor: theamcolor(),myfontweight: FontWeight.w900),),
                            Text("Price:- ${jdhdata.waterparkdata[index]["price"]??"price"} ",style: mysubtext15(textcolor: Colors.grey.shade700),),
                            Text("Time:- ${jdhdata.waterparkdata[index]["time"]??"time"} ",style: mysubtext15(textcolor: Colors.grey.shade700),),
                            Text("Location:- ${jdhdata.waterparkdata[index]["location"]??"location"} ",style: mysubtext15(textcolor: Colors.grey.shade700),),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                    top: 5,
                    right: 0,
                    child: IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border_outlined,size: 50,color: Colors.black54,)))
              ],
            );
          },
          itemCount: jdhdata.waterparkdata.length,
        ),
      ),
    );
  }

}