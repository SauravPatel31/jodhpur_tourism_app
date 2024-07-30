
import 'package:flutter/material.dart';
import 'package:jodhpur_tourism_app/home_page.dart';
import 'package:jodhpur_tourism_app/login_signup_pages/forgot_password_page.dart';
import 'package:jodhpur_tourism_app/login_signup_pages/signup_page.dart';
import 'package:jodhpur_tourism_app/ui_helper/theam_text_style.dart';

class LoginPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        height: MediaQuery.of(context).size.height/1,
        margin: EdgeInsets.only(top: 50),
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ///Login Image...
                  Image.asset("assets/login_signup_img/login.png",height: 240,),
                  SizedBox(height: 30,),
                  ///Email TextField....
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
                        hintText: "Email or Phone Number",
                        hintStyle: TextStyle(color: theamcolor()),
                        suffixIcon: Icon(Icons.alternate_email,color: theamcolor(),)
                    ),
                  ),
                  SizedBox(height: 15,),
                  ///Password TextField...
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
                        hintText: "Password",
                        hintStyle: TextStyle(color: theamcolor()),
                        suffixIcon: Icon(Icons.lock,color: theamcolor(),)
                    ),
                  ),
                  SizedBox(height: 5,),
                  ///Forgot Password...
                  Align(
                      alignment: Alignment.bottomRight,
                      child: TextButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ForgotPasswordPage(),));
                      }, child: Text("Forgot password?",style: mytext15(myfontweight: FontWeight.bold)),)),
                  SizedBox(height: 18,),
                  ///Login Button..
                  InkWell(
                    onTap: (){
                      Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => HomePage(),));
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: theamcolor(),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(child: Text("Login",style: mytext20(textcolor: Colors.white,myfontweight: FontWeight.w400),)),
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
                  Text("Login With",style: TextStyle(fontWeight: FontWeight.w600),),
                  SizedBox(height: 30,),
                  ///Facebook,Google,Apple with Login...
                  SizedBox(
                    width: MediaQuery.of(context).size.width/2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ///Facebook Login...
                        InkWell(
                          onTap:(){
                            print("With Facebook Login");
                          },
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: theamcolor(),
                                width: 2
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Image.asset("assets/icons/fb.png"),
                            ),
                          ),
                        ),
                        ///Google Login...
                        InkWell(
                          onTap: (){
                            print("With Google Login");
                          },
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: theamcolor(),
                                  width: 2
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Image.asset("assets/icons/google.png"),
                            ),
                          ),
                        ),
                        ///Apple...
                        InkWell(
                          onTap: (){
                            print("With Apple Login");
                          },
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: theamcolor(),
                                  width: 2
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Image.asset("assets/icons/apple.png",fit: BoxFit.cover,),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 80,),
                  ///Don't have an Account? Sign Up...
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text("Don't have an Account?",style: mytext15(textcolor: Colors.black87),),
                        InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpPage(),));
                            },
                            child: Text("Sign Up",style: mytext15(myfontweight: FontWeight.w900),)),
                      ],
                    ),
                  )
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }

}