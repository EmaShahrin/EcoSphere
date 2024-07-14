import 'package:carbon/HomeScreen/HomePg.dart';
import 'package:carbon/Screens_OnBoard/LoginPg.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  //WidgetsFlutterBinding.ensureInitialized();
 //await Firebase.initializeApp();

 // await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.light(
            background: Colors.grey.shade100,
            onBackground: Colors.black,
            primary: Color(0xFF506242),
            secondary: Color(0xFF80A150),
            tertiary: Color(0xFFA9C1F6),
          )
        ),
        home:Homepg()
    );
  }
}