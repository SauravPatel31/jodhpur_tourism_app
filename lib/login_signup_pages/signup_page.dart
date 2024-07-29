
import 'package:flutter/material.dart';
import 'package:jodhpur_tourism_app/login_signup_pages/login_page.dart';
import 'package:jodhpur_tourism_app/ui_helper/theam_text_style.dart';

class SignUpPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 30),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ///Login Image...
              Image.asset("assets/login_signup_img/signup.png",height: 240,),
              SizedBox(height: 30,),
              ///User Name TextField...
              TextField(
                keyboardType: TextInputType.name,
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
                    hintText: "User name",
                    hintStyle: TextStyle(color: theamcolor()),
                    suffixIcon: Icon(Icons.person,color: theamcolor(),)
                ),
              ),
              SizedBox(height: 15,),
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
              SizedBox(height: 10,),
              ///Forgot Password...
              Align(
                  alignment: Alignment.bottomLeft,
                child: Text("I accept all terms and conditions",style: mytext15(myfontweight: FontWeight.bold)),),
              SizedBox(height: 18,),
              ///Sign Up Button..
              InkWell(
                onTap: (){},
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: theamcolor(),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(child: Text("Sign Up",style: mytext20(textcolor: Colors.white,myfontweight: FontWeight.w400),)),
                  ),
                ),
              ),
              SizedBox(height: 200,),
              ///Already  have an Account? Login...
              Container(
                margin: EdgeInsets.only(bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("Already have an account?",style: mytext15(textcolor: Colors.black87),),
                    InkWell(
                        onTap: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage(),));
                        },
                        child: Text("Login",style: mytext15(myfontweight: FontWeight.w900),)),
                  ],
                ),
              )
          
            ],
          ),
        ),
      ),
    );
  }

}