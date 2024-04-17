import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late String selectedItem;
  final List<String> dropdownItems = ['Option 1', 'Option 2', 'Option 3'];

  @override
  void initState() {
    super.initState();
    selectedItem = dropdownItems.first;
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          " My Doubts",
          style: TextStyle(color: Colors.white),
        ),
        titleSpacing: 0,
        iconTheme: IconThemeData(color: Colors.white),
        actions: [
          IconButton(
            icon: Icon(
              Icons.notification_important,
              color: Colors.white,
            ),
            onPressed: () {
              print('Important notification pressed!');
            },
          ),
        ],
        backgroundColor: Colors.green,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 4),
              width: width * 1.6 / 5,
              height: height * 0.8 / 5,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100.0),
                child: Image.asset(
                  'images/profile.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: height * 0.12 / 5),
              width: width * 1.4 / 5,
              height: 30,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: width * 0.02 / 5,
                ),
              ),
              child: Center(
                child: Text("Choose Image"),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: height * 0.10 / 5),
              child: Center(
                child: Text(
                  "Or",
                  style: TextStyle(fontSize: width * 0.24 / 5),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: height * 0.04 / 5),
              child: Text(
                "Type your Query below",
                style: TextStyle(fontSize: width * 0.22 / 5),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: height * 0.10 / 5),
              width: width * 3.6 / 5,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: TextField(
                maxLines: 4,
                decoration: InputDecoration(
                  hintText: "Your Query...",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: height * 0.16 / 5),
              padding: EdgeInsets.symmetric(horizontal: width * 0.10 / 5),
              // Add horizontal padding
              width: width * 3.7 / 5,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius:
                    BorderRadius.circular(10.0), // Add border radius
              ),
              child: DropdownButton<String>(
                isExpanded: true,
                underline: SizedBox(),
                icon: Icon(Icons.arrow_drop_down),
                hint: Text('Select an option'),
                value: selectedItem,
                onChanged: (newValue) {
                  setState(() {
                    selectedItem = newValue!;
                  });
                },
                items: dropdownItems.map((String item) {
                  return DropdownMenuItem<String>(
                    value: item,
                    child: Text(item),
                  );
                }).toList(),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              width: width * 3.7 / 5,
              height: height * 0.37 / 5,
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Submit",
                    style: TextStyle(
                        color: Colors.white, fontSize: width * 0.24 / 5)),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.pink),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: height * 0.14 / 5),
              width: width * 4.0 / 5,
              height: height * 0.29 / 5,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: width * 0.02 / 5,
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: width * 0.15 / 5),
                    child: Text(
                      "My Doubts",
                      style: TextStyle(
                        fontSize: width * 0.22 / 5,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Spacer(),
                  InkWell(
                    onTap: () {},
                    child: Icon(Icons.arrow_forward_ios),
                  ),
                ],
              ),
            ),
            Button(context),
          ],
        ),
      ),
    );
  }
}

Widget Button(BuildContext context) {
  final width = MediaQuery.of(context).size.width;
  final height = MediaQuery.of(context).size.height;
  return Container(
    margin: EdgeInsets.only(top: width * 0.2 / 5, bottom: width * 0.1 / 5),
    width: width * 3.2 / 5,
    height: height * 0.30 / 5,
    child: ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, "upscScreen");
      },
      child: Text(
        'Next',
        style: TextStyle(
          fontSize: width * 0.20 / 5,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.green.shade600,
        padding: EdgeInsets.symmetric(
            horizontal: width * 0.20 / 5, vertical: height * 0.10 / 5),
        // Button padding
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20), // Button border radius
        ),
      ),
    ),
  );
}
