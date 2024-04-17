import 'package:flutter/material.dart';
class OtpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ProfileOtpScreen(context),
              OtpText(context),
              OtpTextEmailField(context),
              OtpButton(context),
            ],
          ),
        ),
      ),
    );
  }
}

Widget ProfileOtpScreen(BuildContext context) {
 final width=MediaQuery.of(context).size.width;
final height=MediaQuery.of(context).size.height;
  return Container(
    margin: EdgeInsets.only(top: width*0.80/5, left: width*0.40/5),
    width: width*2.2/5,
    height:  height*1.1/5,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(100.0),
      image: DecorationImage(
          image: AssetImage("images/profile.jpg"),
          fit: BoxFit.cover),
    ),
  );
}

Widget OtpText(BuildContext context) {
 final width=MediaQuery.of(context).size.width;
  final height=MediaQuery.of(context).size.height;
  return Container(
    margin: EdgeInsets.only(
      top: height*0.20/5,
      left: width*0.24/5,
    ),
    child: Text(
      "Enter your Email to send OTP",
      style: TextStyle(
          color: Colors.pink,
          fontSize: width*0.28/5,
          fontWeight: FontWeight.w500
      ),
    ),
  );
}

Widget OtpTextEmailField(BuildContext context) {
  final width=MediaQuery.of(context).size.width;
  final height=MediaQuery.of(context).size.height;
  return Container(
    margin: EdgeInsets.only(top: height*0.16/5, left:width* 0.3/5),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
    ),
    width: 340,
    child: TextField(
      decoration: InputDecoration(

          filled: true,
          hintText: "Email",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          prefixIcon: Icon(
            Icons.mobile_screen_share,
            size: width*0.35/5,
            color: Colors.black,
          )),
    ),
  );
}

Widget OtpButton(BuildContext context) {
 final width=MediaQuery.of(context).size.width;
 final height=MediaQuery.of(context).size.height;
  return Container(
    margin: EdgeInsets.only(top: height*0.15/5, left: width*0.25/5),
    height:height*0.40/5,
    width: width*4.1/5,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(25),
    ),
    child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all<Color>(Colors.pink.shade300),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0))),
        ),
        onPressed: () {
          Navigator.pushNamed(context, 'loginScreen');
        },
        child: Text(
          "Send OTP",
          style: TextStyle(color: Colors.white, fontSize: width*0.25/5),
        )),
  );
}
