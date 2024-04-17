import 'package:flutter/material.dart';
import 'package:myapplication/homeScreen.dart';
import 'package:myapplication/loginScreen.dart';
import 'package:myapplication/otpScreen.dart';
import 'package:myapplication/upscScreen.dart';
import 'package:myapplication/psychologySeries_Screen.dart';
import 'createAccountScreen.dart';
import 'myCourse.dart';

void main() => runApp( MyApp());
class MyApp extends StatelessWidget {
@override
Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'loginScreen',
    routes: {
      'loginScreen': (context) => LoginScreen(),
      'homeScreen': (context) => HomeScreen(),
      'createAccountScreen':(context)=>CreateAccountScreen(),
      'otpScreen':(context)=>OtpScreen(),
      'upscScreen':(context)=>UpscScreen(),
      'psychologySeries_Screen': (context) => PsychologySeries_Screen(),
      'myCourse':(context)=>myCourse_Screen(),
    },
  );
}
}


// home: LoginScreen(),



