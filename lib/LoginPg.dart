import 'package:carbon/signuppage.dart';
import 'package:flutter/material.dart';

import 'UiHelper.dart';
//import 'SignUpPg.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController= TextEditingController();


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Login Page",style: TextStyle(color: Colors.white)),

        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        UiHelper.CustomTextField(emailController, "Email", Icons.mail, false),
        UiHelper.CustomTextField(passwordController, "Password", Icons.password, true),
        SizedBox(height: 30),
        UiHelper.CustomButton(() { }, "Login"),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Already Have an Account?"),
              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpPage()));
              },
                  child: Text("Sign Up",
                      style: TextStyle(fontSize: 20,color: Colors.green,
                      fontWeight: FontWeight.w500)))
            ],
          )

      ] ,) ,
    );
  }
}

