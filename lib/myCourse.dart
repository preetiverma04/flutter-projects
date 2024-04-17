import 'package:flutter/material.dart';

class myCourse_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> listData = [
      {"type": "list", "subject": "Hindi", "teacher": "Preeti Mam"},
      {"type": "list", "subject": "English", "teacher":  "Preeti Mam"},
      {"type": "list", "subject": "Math", "teacher":  "Preeti Mam"},
      {"type": "list", "subject": "Science", "teacher":  "Preeti Mam"},
      {"type": "list", "subject": "Physics", "teacher":  "Preeti Mam"},
      {"type": "list", "subject": "Chemistry", "teacher":  "Preeti Mam"},
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Course",
          style: TextStyle(fontSize: 28.0),
        ),
        backgroundColor: Colors.green.shade200,
      ),
      body: ListView.builder(
          itemCount: listData.length,
          itemBuilder: (BuildContext context, int index) {
            String subjects = listData[index]["subject"];
            String teachers = listData[index]["teacher"];
            return Column(
              children: [
                ListTile(
                  title: Text(
                    subjects,
                    style: TextStyle(color: Colors.black,fontSize: 19.0),
                  ),
                  subtitle: Text(
                    teachers,
                    style: TextStyle(color: Colors.black,fontSize: 16.0),
                  ),
                  leading: Icon(
                    Icons.person,
                    color: Colors.green.shade800,
                  ),
                  trailing: Icon(
                    Icons.star,
                    color: Colors.green.shade800,
                  ),
                ),
                Divider(),
              ],
            );
          }),
    );
  }
}
