import 'package:carbon/Widgets/text_field.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SocialHomePage extends StatefulWidget {
  const SocialHomePage({super.key});

  @override
  State<SocialHomePage> createState() => _SocialHomePageState();
}

class _SocialHomePageState extends State<SocialHomePage> {
  final currentUser = FirebaseAuth.instance.currentUser!;
  final textController = TextEditingController();

  void signOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF93A87F),
      appBar: AppBar(
        backgroundColor: Color(0xFF455932),
        elevation: 0,
        title: Text(
          "The Wall",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: signOut,
            icon: Icon(Icons.logout),
            color: Colors.white,
          )
        ],
      ),
      body: Center(
        child: ListView(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                    child: TextFieldInpute(
                  textEditingController: textController,
                  isPass: false,
                  validate: (String? value) {},
                  hintText: 'Write Something on the Wall',
                  icon: Icons.add,
                      textInputType: TextInputType.text,

                ))
              ],
            ),
            Text("Logged in as " + currentUser.email!),
          ],
        ),
      ),
    );
  }
}
