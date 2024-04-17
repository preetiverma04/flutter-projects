import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreateAccountScreen extends StatefulWidget {
  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              _CreateAccountHeading(context),
              _CreateAccountTextField(context),
              _CreateAccount_Button(context)
            ],
          ),
        ),
      ),
    );
  }
}

Widget _CreateAccountHeading(BuildContext context) {
final width=MediaQuery.of(context).size.width;
 final height=MediaQuery.of(context).size.height;
  return Container(
    margin: EdgeInsets.only(top:height*0.09/5),
    child: Center(
        child: Text(
      "Create Account",
      style: TextStyle(
          color: Colors.black, fontSize: width*0.40/5, fontWeight: FontWeight.w500),
      textAlign: TextAlign.left,
    )),
  );
}

Widget _CreateAccountTextField(BuildContext context) {
  final width=MediaQuery.of(context).size.width;
  final height=MediaQuery.of(context).size.height;
  return Container(
    width: width*4.4/5,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
    ),
    margin: EdgeInsets.only(top:height*0.10/5),
    child: Column(
      children: [
        TextField(
          decoration: InputDecoration(
              filled: true,
              fillColor: Colors.grey.shade200,
              hintText: "Name",
              prefixIcon: Icon(Icons.person,color: Colors.green.shade800,),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              hintStyle: TextStyle(color: Colors.black)),
        ),
        Container(
          margin: EdgeInsets.only(top: width*0.10/5),
          child: TextField(
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey.shade200,
                hintText: "+91 Mobile Number",
                prefixIcon: Icon(Icons.phone),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                hintStyle: TextStyle(color: Colors.black)),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: width*0.10/5),
          child: TextField(
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey.shade200,
                hintText: "Email",
                prefixIcon: Icon(Icons.email,color: Colors.green.shade800,),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                hintStyle: TextStyle(color: Colors.black)),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: width*0.10/5),
          child: TextField(
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey.shade200,
                hintText: "Select Country",
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                hintStyle: TextStyle(color: Colors.black)),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: width*0.10/5),
          child: TextField(
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey.shade200,
                hintText: "Set Password",
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                hintStyle: TextStyle(color: Colors.black)),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: width*0.10/5),
          child: TextField(
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey.shade200,
                hintText: "Confirm Password",
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                hintStyle: TextStyle(color: Colors.black)),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: width*0.10/5),
          child: TextField(
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey.shade200,
                hintText: "Referal code (Optional)",
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                hintStyle: TextStyle(color: Colors.black)),
          ),
        )
      ],
    ),
  );
}

Widget _CreateAccount_Button(BuildContext context) {
  final width=MediaQuery.of(context).size.width;
  final height=MediaQuery.of(context).size.height;
  return Container(
    margin: EdgeInsets.only(top: width*0.19/5 ,bottom: height*0.10/5),
    width: width*4.0/5,
    height: height*0.37/5,
    child: ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, 'loginScreen');
      },
      child: Text(
        "Create Account",
        style: TextStyle(color: Colors.white, fontSize: width*0.26/5),
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.pink.shade300),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        )),
      ),
    ),
  );
}
