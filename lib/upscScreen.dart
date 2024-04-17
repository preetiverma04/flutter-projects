import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UpscScreen extends StatelessWidget {
  final List<Map<String, dynamic>> drawerItems = [
    {
      "type": "header",
      "name": "Preeti",
      "email": "preetiverma23104@gmail.com",
      "avatar": "PV"
    },
    {"icon": Icons.group, "title": "Social"},
    {"icon": Icons.snooze, "title": "Snoozed"},
    {"icon": Icons.assessment, "title": "Test series"},
    {"icon": Icons.share, "title": "Share"},
    {"icon": Icons.info, "title": "About us"},
    {"icon": Icons.phone, "title": "Contact us"},
    {"icon": Icons.library_books, "title": "Terms and conditions"},
    {"icon": Icons.settings, "title": "Settings"},
  ];

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Text(
            "UPSC",
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            Container(
              margin: EdgeInsets.only(right: width * 0.15 / 5),
              child: Icon(
                Icons.notification_important,
                color: Colors.white,
              ),
            ),
          ],
        ),
        drawer: Drawer(
          backgroundColor: Colors.purple.shade50,
          child: ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: drawerItems.length,
            itemBuilder: (context, index) {
              Map<String, dynamic> item = drawerItems[index];
              if (item['type'] == 'header') {
                return UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.pink.shade100,
                  ),
                  accountName: Text(
                    item['name'],
                    style: TextStyle(color: Colors.black,fontSize: width*0.23/5),
                  ),
                  accountEmail: Text(
                    item['email'],
                    style: TextStyle(color: Colors.black,fontSize: width*0.23/5),
                  ),
                  currentAccountPicture: CircleAvatar(
                    child: Text(
                      item['avatar'],
                      style: TextStyle(color: Colors.black,fontSize:width*0.23/5,fontWeight: FontWeight.w900),
                    ),
                  ),
                );
              } else {
                return ListTile(
                  leading: Icon(
                    item['icon'],
                    color: Colors.green.shade700,
                  ),
                  title: Text(
                    item['title'],
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: width * 0.23 / 5,
                    ),
                  ),
                  onTap: () {
                    // Handle tap for the current item
                  },
                );
              }
            },
          ),
        ),
        body: Column(
          children: [

            NavySSrimage(),
            IconsForCompleteCourses(context),
            topCourses(context),
            upscbottomimages(context),
          ],
        ),
        bottomNavigationBar: bottomBar(context, bottomBarItems),
      ),
    );
  }
}

Widget NavySSrimage() {
  return Container(
    width: double.infinity,
    margin: EdgeInsets.symmetric(horizontal: 10.0),
    child: Image.asset(
      "images/img.png",
      fit: BoxFit.cover,
    ),
  );
}

Widget IconsForCompleteCourses(BuildContext context) {
  var width = MediaQuery.of(context).size.width;
  var height = MediaQuery.of(context).size.height;
  const List<Map<String, dynamic>> iconData = [
    {"icon": Icons.play_circle_filled, "text": "Courses"},
    {"icon": Icons.book, "text": "Study Material"},
    {"icon": Icons.assessment, "text": "Test Series"},
    {"icon": Icons.library_books, "text": "Magazine"},
    {"icon": Icons.help, "text": "Ask Doubt"},
    {"icon": Icons.lightbulb, "text": "Motivation"},
  ];
  return SingleChildScrollView(
    scrollDirection: Axis.vertical,
    child: Container(

      margin: EdgeInsets.only(top: height*0.14/5),
      child: Wrap(
        spacing: width*0.5/5,
        runSpacing: height * 0.10/ 5,
        alignment: WrapAlignment.spaceEvenly,
        children: iconData.map((data) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 35,
                backgroundColor: Colors.grey.shade200,
                child: IconButton(
                  onPressed: () {
                    print('Button tapped: ${data['text']}');
                  },
                  icon: Icon(
                    data['icon'],
                    color: Colors.teal,
                    size: width * 0.45 / 5,
                  ),
                ),
              ),
              SizedBox(height: 10,width: 10,),
              Text(data['text'],style: TextStyle(fontSize: 14.0),),
            ],
          );
        }).toList(),
      ),
    ),
  );
}

Widget topCourses(BuildContext context) {
  var width = MediaQuery.of(context).size.width;
  return Container(
    padding: EdgeInsets.only(top: 8),
    margin: EdgeInsets.only(left: width * 0.17 / 5),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Top Courses",
          style: TextStyle(
            fontSize: width * 0.25 / 5,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            // Add onPressed functionality
          },
          style: ElevatedButton.styleFrom(),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "View all",
                style: TextStyle(
                  fontSize: width * 0.2 / 5,
                  color: Colors.black,
                ),
              ),
              Icon(
                Icons.arrow_forward,
                color: Colors.black,
                size: width * 0.25 / 5,
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

const List<Map<String, dynamic>> imagedata = [
  {'image1': "images/img1.jpeg"},
  {'image2': "images/img2.jpeg"},
  {'image3': "images/img3.jpeg"},
  {'image4': "images/img4.jpeg"},
  {'image5': "images/img5.jpeg"},
];

Widget upscbottomimages(BuildContext context) {
  var width = MediaQuery.of(context).size.width;
  var height = MediaQuery.of(context).size.height;
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: imagedata.map((value) {
        String imagePath = value.values.first;
        return Container(
          margin: EdgeInsets.only(left: width * 0.2 / 5,top: height*0.1/5),
          width: width * 1.4 / 5,
          height: width * 1.4 / 5,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
            ),
          ),
        );
      }).toList(),
    ),
  );
}


List<Map<String, dynamic>> bottomBarItems = [
  {'type': 'icon', 'icon': Icons.play_circle_filled, 'title': 'MY Course', 'route': 'myCourse'},
  {'type': 'icon', 'icon': Icons.note_add, 'title': 'Test Series', 'route': 'psychologySeries_Screen'},
  {'type': 'avatar', 'icon': Icons.home, 'route': 'upscScreen'},
  {'type': 'icon', 'icon': Icons.shopping_cart, 'title': 'Shopping', 'route': 'shoppingScreen'},
  {'type': 'icon', 'icon': Icons.person, 'title': 'Profile', 'route': 'profileScreen'},
];

Widget bottomBar(BuildContext context, List<Map<String, dynamic>> items) {
  var width = MediaQuery.of(context).size.width;
  return Container(
    child: BottomAppBar(

      color: Colors.teal.shade50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: items.map((item) {
          if (item['type'] == 'icon') {
            return TextButton(
              onPressed: () {
                Navigator.pushNamed(context, item['route']);
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    item['icon'],
                    color: Colors.blue.shade900,
                    size: width * 0.30 / 5,
                  ),
                  SizedBox(height: 5),
                  Text(
                    item['title'],
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: width * 0.1 / 5,
                    ),
                  ),
                ],
              ),
            );
          } else if (item['type'] == 'avatar') {
            return CircleAvatar(
              radius: 40.0,
              backgroundColor: Colors.blue.shade900,
              child: TextButton(
                onPressed: () {},
                child: Icon(
                  item['icon'],
                  color: Colors.white,
                  size: width * 0.5 / 5,
                ),
              ),
            );
          }
          return SizedBox();
        }).toList(),
      ),
    ),
  );
}
