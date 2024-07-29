import 'dart:async';
import 'package:flutter/material.dart';
import 'package:jodhpur_tourism_app/home_page.dart';
import 'package:jodhpur_tourism_app/login_signup_pages/login_page.dart';

class SplashPage extends StatelessWidget{
  const SplashPage({super.key});
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginPage()));
    });
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        child: Stack(
          children: [
            Image.asset("assets/images/mehrangarh_fort.jpg",height: double.infinity,width: double.infinity,fit: BoxFit.cover,),
            Container(
              color: Colors.white.withOpacity(0.8),
            ),
            Center(child: Image.asset("assets/images/text.png",width: 350,)),
           Positioned(
               bottom: 0,
               child: Image.asset("assets/images/camels.png",width: MediaQuery.of(context).size.width,height: 145,color: Color(0xff326896),fit: BoxFit.fill,))
          ],
        ),
      ),
    );
  }

}