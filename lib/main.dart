
import 'package:flutter/material.dart';
import 'package:jodhpur_tourism_app/home_page.dart';
import 'package:jodhpur_tourism_app/hotels_lists_pages/hotel_type_list_page.dart';
import 'package:jodhpur_tourism_app/login_signup_pages/forgot_password_page.dart';
import 'package:jodhpur_tourism_app/login_signup_pages/login_page.dart';
import 'package:jodhpur_tourism_app/login_signup_pages/reset_password.dart';
import 'package:jodhpur_tourism_app/login_signup_pages/signup_page.dart';
import 'package:jodhpur_tourism_app/places_lists_page/place_info_page.dart';
import 'package:jodhpur_tourism_app/places_lists_page/places_page.dart';
import 'package:jodhpur_tourism_app/splash_page.dart';

void main(){
  runApp(JodhpurTurismApp());
}

class JodhpurTurismApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
    );
  }

}