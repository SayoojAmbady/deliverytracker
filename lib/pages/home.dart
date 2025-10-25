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
              children: [SizedBox(width: MediaQuery.of(context).size.width/3.6),
                  Icon(Icons.location_on,color: Color(0xff6053f8),size: 30.0,),
                  Column(
                    children: [
                      Text("Current Location",style: AppWidget.SimpleTextfiledStyle(),),
                      Text("City Avneue,New York",style: AppWidget.SimpleTextfiledStyle(),)
                    ],
                  )

    ],
            )
          ],
        ),
      ),
    );
  }
}
