
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Color theamcolor({Color? mycolor}){
  return mycolor ??Color(0xff029BFF);
}
Color backgroundcolor({Color?mybackcolor}){
  return mybackcolor??Colors.grey.shade200;
}

TextStyle mytext20({Color? textcolor,FontWeight myfontweight = FontWeight.normal}){
  return TextStyle(
    fontSize: 20,
    fontFamily: "pop",
    fontWeight: myfontweight,
    color: textcolor ??Colors.black,
  );
}
TextStyle mytext25({Color? textcolor,FontWeight myfontweight = FontWeight.normal}){
  return TextStyle(
    fontSize: 25,
    fontFamily: "pop",
    fontWeight: myfontweight,
    color: textcolor ??Colors.black,
  );
}

TextStyle mytext15({Color? textcolor,FontWeight myfontweight = FontWeight.normal}){
  return TextStyle(
    fontSize: 15,
    fontFamily: "pop",
    fontWeight: myfontweight,
    color: textcolor ??Color(0xff029BFF),
  );
}
TextStyle mysubtext15({Color? textcolor,FontWeight myfontweight = FontWeight.normal}){
  return TextStyle(
    fontSize: 15,
    fontFamily: "pop",
    fontWeight: myfontweight,
    color: textcolor ??Color(0xff029BFF),
  );
}


