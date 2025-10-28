import 'package:deliverytracker/services/widget_support.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 40.0),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.location_on,color: Color(0xff6053f8),size: 29.0),
                          Text("Current Location",style: AppWidget.SimpleTextfiledStyle()),
                        ],
                      ),

                      Text("City Avneue,New York",style: AppWidget.HeadlineTextfiledStyle(18.0),)
                    ],
                  ),


    ],
            ),
SizedBox(height: 20),
            Container(

              height: MediaQuery.of(context).size.height/2,
              decoration: BoxDecoration(color:  Color(0xff6053f8)),
              margin: EdgeInsets.only(left: 20,right: 20),
              
            )
          ],
        ),
      ),
    );
  }
}
