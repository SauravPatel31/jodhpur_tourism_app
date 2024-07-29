
import 'package:flutter/material.dart';
import 'package:jodhpur_tourism_app/login_signup_pages/login_page.dart';
import 'package:jodhpur_tourism_app/ui_helper/theam_text_style.dart';

class ReSetPassword extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/login_signup_img/verify.png",height: 300,fit: BoxFit.cover,),
              SizedBox(height: 15,),
              ///OTP TextField...
              TextField(
                autofocus: true,
                maxLength: 4,
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
                    hintText: "Enter the OTP",
                    hintStyle: TextStyle(color: theamcolor()),
                    suffixIcon: Icon(Icons.input,color: theamcolor(),)
                ),
              ),
              SizedBox(height: 15,),
              ///New Password Text Field...
              TextField(
                obscureText: true,
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
                    hintText: "New password",
                    hintStyle: TextStyle(color: theamcolor()),
                    suffixIcon: Icon(Icons.lock,color: theamcolor(),)
                ),
              ),
              SizedBox(height: 15,),
              ///Confirm Password...
              TextField(
                obscureText: true,
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
                    hintText: "Confirm password",
                    hintStyle: TextStyle(color: theamcolor()),
                    suffixIcon: Icon(Icons.lock,color: theamcolor(),)
                ),
              ),
              SizedBox(height: 25,),
              ///Password Set...
              InkWell(
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage(),));
                },
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: theamcolor(),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(child: Text("Set Password",style: mytext20(textcolor: Colors.white,myfontweight: FontWeight.w400),)),
                  ),
          
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  
}