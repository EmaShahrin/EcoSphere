import 'package:carbon/LoginPg.dart';
import 'package:carbon/UiHelper.dart';
import 'package:carbon/main.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController= TextEditingController();

  signUp(String email, String password )async{
    if(email=="" && password==""){
      UiHelper.CustomAlertBox(context, "Enter Required Fields");
    }
    else{
    UserCredential? usercredential;
    try{

      usercredential=await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password).then((value) {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
      });
    }
    on FirebaseAuthException catch(ex) {
      return UiHelper.CustomAlertBox(context, ex.code.toString());
    } }
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Sign Up Page",style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          UiHelper.CustomTextField(emailController,"Email",Icons.mail,false),
          UiHelper.CustomTextField(passwordController,"Password",Icons.password,true),
          SizedBox(height: 30),
          UiHelper.CustomButton(() {
            signUp(emailController.text.toString(), passwordController.text.toString());
          }, "Sign Up")
        ],
      ),
    );
  }
}
