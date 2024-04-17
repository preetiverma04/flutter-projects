

import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    return Scaffold(
      // backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              _buildProfileImage(context),
              _buildWelcomeText(context),
              SizedBox(height: height*0.1/5),
              _buildEmailTextField(context),
              SizedBox(height: height*0.1/5),
              _buildPasswordTextField(context),
              _buildForgotPasswordText(context),
              _loginButton(context),
              _createAccountButton(context),
              _nextButton(context),

            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProfileImage(BuildContext context) {
   final width=MediaQuery.of(context).size.width;
    final height=MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.only(left: width*0.1/5, top: height*0.05/5),
      width: width*2.6/5,
      height: height*1.30/5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        boxShadow: [
          BoxShadow(
            spreadRadius: 0,
            blurRadius: 0,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Image.asset(
          'images/profile.jpg',
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildWelcomeText(BuildContext context) {
    final width=MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(left: width*0.05/5),
      child: Text(
        "Welcome!",
        style: TextStyle(
          color: Colors.pink,
          fontSize: width*0.42/5,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Widget _buildEmailTextField(BuildContext context) {
    final width=MediaQuery.of(context).size.width;
    return Container(
      height: 60,
      margin: EdgeInsets.symmetric(horizontal: width*0.25/5),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Color.fromRGBO(192, 192, 192, 0.5),
          hintText: "Email",
          prefixIcon: Icon(Icons.email,color: Colors.green.shade800,size: width*0.4/5,),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),

          ),
        ),
      ),
    );
  }

  Widget _buildPasswordTextField(BuildContext context) {
   final width=MediaQuery.of(context).size.width;
    return Container(
      height: 60.0,
      margin: EdgeInsets.symmetric(horizontal: width*0.25/5),
      child: TextField(
        keyboardType: TextInputType.numberWithOptions(),
        obscureText: true,
        decoration: InputDecoration(
          filled: true,
          fillColor: Color.fromRGBO(192, 192, 192, 0.5),
          hintText: "Password",

          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),

          ),
        ),
      ),
    );
  }

  Widget _buildForgotPasswordText(BuildContext context) {
   final width=MediaQuery.of(context).size.width;
   final height=MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.only(left: width*2.6/5,top: height*0.04/5),
      child: Text(
        "Forgot Password",
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 16.0,
          decoration: TextDecoration.underline,
        ),
        textAlign: TextAlign.right,
      ),
    );
  }
}

Widget _loginButton(BuildContext context) {
 final width=MediaQuery.of(context).size.width;
 final height=MediaQuery.of(context).size.height;
  return Container(
    margin: EdgeInsets.only(top:height*0.10/5),
    width: width*4.0/5,
    height: height*0.40/5,
    child: ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, "otpScreen");
      },

      style: ButtonStyle(
        elevation: MaterialStateProperty.all<double>(2),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.only(

            ),

          ),
        ),
        backgroundColor: MaterialStateProperty.all<Color>(Colors.pink.shade300),
        shadowColor: MaterialStateProperty.all<Color>(Colors.pink),

      ),
      child: Text(
        'Login',
        style: TextStyle(
          fontSize: width*0.27/5,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}


Widget _createAccountButton(BuildContext context) {
 final width=MediaQuery.of(context).size.width;
 final height=MediaQuery.of(context).size.height;
  return Container(
    width: width*4.0/5,
    height: height*0.37/5,
    margin: EdgeInsets.only(top: height*0.10/5),
    child: ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, "createAccountScreen");
        print("hello");
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.grey), // Set background color to white
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.only(

              ),
            side: BorderSide(color: Colors.black, width: width*0.01/5),
          ),
        ),
        shadowColor: MaterialStateProperty.all<Color>(Colors.grey,),
        elevation: MaterialStateProperty.all<double>(2.0),
      ),
      child: Center(
        child: Text(
          'Create Account',
          style: TextStyle(
            fontSize: width*0.27/5,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
  );
}

Widget _nextButton(BuildContext context) {
  final width=MediaQuery.of(context).size.width;
  final height=MediaQuery.of(context).size.height;
  return Container(
    margin: EdgeInsets.only(top: height*0.10/5),
    width: width*2.5/5,
    height: height*0.35/5,
    child: ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, "homeScreen");
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.black54),
        side: MaterialStateProperty.all<BorderSide>(
          BorderSide(color: Colors.black, width: width*0.01/5),
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.only(


              ),
          ),
        ),
      ),
      child: Text("Next",style: TextStyle(color: Colors.white,fontSize: width*0.23/5),),
    ),
  );
}


