import 'package:carbon/Widgets/button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MyButton(onTap: () async {
            await GoogleSignIn().signOut();
            FirebaseAuth.instance.signOut();
            await FacebookAuth.instance.logOut();
          }, text: "Log Out")
        ],
      ),
    );
  }
}
