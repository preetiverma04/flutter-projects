import 'package:flutter/material.dart';
class PsychologySeries_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Psycology test series",
          style: TextStyle(color: Colors.black,fontSize: 21.0),
        ),
        backgroundColor: Colors.blueGrey.shade100,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            TestSeriesContainer1(context),
            TestSeriesContainer1(context),
            TestSeriesContainer1(context),
          ],
        ),
      ),
    );
  }
}


Widget TestSeriesContainer1(BuildContext context) {
  final height = MediaQuery.of(context).size.height;
  final width = MediaQuery.of(context).size.height;
  return Stack(
    children: [
      Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: width*0.10/5, right: width*0.10/5, top: height*0.04/5),
            width: width * 0.50,
            height: height * 1.5 / 5,

            decoration: BoxDecoration(
              color: Colors.purple.shade50,

              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: EdgeInsets.only(top: width*0.07/5, left: width*0.09/5, right:width*0.10/5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Psychology Special Test Series Test 1 by\nAnurag Sir",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: width*0.11/5,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                        width: width * 0.4 / 5,
                        height: height * 0.3 / 5,
                        color: Colors.grey.shade100,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.person,
                              color: Colors.green.shade900,
                              size: width*0.13/5,
                            ),
                            SizedBox(height: 0.03), // Adjust spacing between icon and text
                            Text(
                              "Applicamt",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize:width*0.06/5,
                              ),
                            ),

                          ],
                        ),
                      ),

                      SizedBox(width: width* 0.07/5),
                      Container(
                        width: width * 0.4 / 5,
                        height: height * 0.3 / 5,
                        color: Colors.grey.shade100,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.lock_clock,
                              color: Colors.green.shade900,
                              size: width*0.13/5,
                            ),
                            SizedBox(height: height*0.03/5,), // Adjust spacing between icon and text
                            Text(
                              "Time",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: width*0.06/5,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: width* 0.07/5),
                      Container(
                        width: width * 0.4 / 5,
                        height: height * 0.3 / 5,
                        color: Colors.grey.shade100,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.help_outline,
                              color: Colors.green.shade900,
                              size: width*0.13/5,
                            ),
                            SizedBox(height:height*0.03/5,), // Adjust spacing between icon and text
                            Text(
                              "Questions",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: width*0.06/5,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: width* 0.07/5),
                      Container(
                        width: width * 0.45 / 5,
                        height: height * 0.25 / 5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.pink.shade700,
                        ),

                        child: Center(
                            child: Text(
                          "Start",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: width*0.11/5,
                          ),
                        )),
                      ),

                    ],
                  ),
                  SizedBox(height: height*0.03/5,),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left:width * 0.12/5),
                        child: Text("336",style: TextStyle(fontSize: width*0.08/5),),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: width * 0.27/5),
                        child: Text("30 Min.",style: TextStyle(fontSize:width*0.08/5),),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: width * 0.18/5),
                        child: Text("100",style: TextStyle(fontSize:width*0.08/5),),
                      )
                    ],
                  ),
                  Divider(
                    color: Colors.grey.shade300,
                  ),
                  ViewRankButton(context),

                ],
              ),
            ),
          ),

        ],
      ),
    ],
  );
}
Widget ViewRankButton(BuildContext context){
 final width = MediaQuery.of(context).size.width;
  return Row(
    children: [
      SizedBox(
        width: width * 1.9/ 5,
        child: ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.grey.shade50),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: width*0.2/5),
              Text(
                "View Rank",
                style: TextStyle(fontSize: width*0.16/5, color: Colors.blueGrey),
              ),
              Icon(Icons.arrow_forward, size: width*0.25/5, color: Colors.blueGrey),
            ],
          ),
        ),
      ),
      SizedBox(width: width*0.07/5),
      Icon(Icons.thumb_up, size: width*0.29/5, color: Colors.red.shade800),
      SizedBox(width: width*0.07/5),
      Text("45 likes",style: TextStyle(fontSize: width * 0.13/5),),
      SizedBox(width:width*0.15/5 ,),
      Icon(Icons.message, size: width*0.29/5, color: Colors.green.shade800),
      SizedBox(width:width*0.07/5 ,),
      Text("20 Comments",style: TextStyle(fontSize: width * 0.13/5),)
    ],
  );
}


