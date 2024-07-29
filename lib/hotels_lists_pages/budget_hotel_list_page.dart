
import 'package:flutter/material.dart';
import 'package:jodhpur_tourism_app/app_constant_page.dart';
import 'package:jodhpur_tourism_app/hotels_lists_pages/budget_hotel_info_page.dart';
import 'package:jodhpur_tourism_app/ui_helper/theam_text_style.dart';

class BudgetHotelListPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundcolor(),
      appBar: AppBar(
        title: Text("Budget Hotels",style: mytext20(myfontweight: FontWeight.w900),),
        backgroundColor: backgroundcolor(),
      ),
      body: ListView.builder(itemBuilder: (contex,index){
        return InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>BudgetHotelInfoPage(myindex: index)));
          },
          child: Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ///Place Images..
                Container(
                    width: 80,
                    height: 80,
                    margin: EdgeInsets.all(8),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(jdhdata.budgethotel[index]["img"],fit: BoxFit.cover,))),
                SizedBox(width: 10,),
                ///Place Name..
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(jdhdata.budgethotel[index]["name"],style: mytext20(myfontweight: FontWeight.w800,textcolor: theamcolor()),),
                      SizedBox(height: 5,),
                      Text("Tap for more Details..",style: mytext15(textcolor: Colors.grey),),
                    ],
                  ),
                ),
                ///Forward Arrow Icon..
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Icon(Icons.arrow_forward_ios,color: theamcolor(),),
                )
              ],
            ),
          ),
        );
      },
      itemCount: jdhdata.budgethotel.length,
      ),
    );
  }

}