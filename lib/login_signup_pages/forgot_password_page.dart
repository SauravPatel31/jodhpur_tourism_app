
import 'package:flutter/material.dart';
import 'package:jodhpur_tourism_app/login_signup_pages/reset_password.dart';
import 'package:jodhpur_tourism_app/ui_helper/theam_text_style.dart';

class ForgotPasswordPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(),
     body: Padding(
       padding: const EdgeInsets.symmetric(horizontal: 30),
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Image.asset("assets/login_signup_img/forgotpsw.png",width: 340,),
           SizedBox(height: 10,),
           ///E-mail TextField...
           TextField(
             keyboardType: TextInputType.emailAddress,
             autofocus: true,
             decoration: InputDecoration(
                 focusedBorder: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(10),
                     borderSide: BorderSide(
                         width: 2,
                         color: theamcolor()
                     )
                 ),
                 enabledBorder: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(10),
                     borderSide: BorderSide(
                         width: 2,
                         color: Colors.lightBlue
                     )
                 ),
                 hintText: "Enter the email id",
                 hintStyle: TextStyle(color: theamcolor()),
                 suffixIcon: Icon(Icons.alternate_email,color: theamcolor(),)
             ),
           ),
           SizedBox(height: 20,),
           ///Reset Password Button...
           InkWell(
             onTap: (){
               Navigator.push(context, MaterialPageRoute(builder: (context) =>ReSetPassword(),));
               },
             child: Container(
               width: double.infinity,
               decoration: BoxDecoration(
                   color: theamcolor(),
                 borderRadius: BorderRadius.circular(10)
               ),
               child: Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Center(child: Text("Recover Password",style: mytext20(textcolor: Colors.white,myfontweight: FontWeight.w400),)),
               ),

             ),
           )
         ],
       ),
     ),
   );
  }

}