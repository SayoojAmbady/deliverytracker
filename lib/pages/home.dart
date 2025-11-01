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
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
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
                            Icon(
                              Icons.location_on,
                              color: Color(0xff6053f8),
                              size: 29.0,
                            ),
                            Text(
                              "Current Location",
                              style: AppWidget.SimpleTextfiledStyle(),
                            ),
                          ],
                        ),
                        SizedBox(height: 8),
                        Text(
                          "City Avneue,New York",
                          style: AppWidget.HeadlineTextfiledStyle(18.0),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2.0,
                  decoration: BoxDecoration(
                    color: Color(0xff6053f8),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  margin: EdgeInsets.only(left: 20, right: 20),

                  child: Column(
                    children: [
                      SizedBox(height: 30),
                      Text(
                        "Track Your Shipment",
                        style: AppWidget.WhiteTextfiledStyle(),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Please enter your Traking number",
                        style: AppWidget.DifferenetShadeWhiteTextfiledStyle(),
                      ),
                      SizedBox(height: 30),
                      Container(
                        padding: EdgeInsets.symmetric(
                          vertical: 5.0,
                          horizontal: 10.0,
                        ),
                        height: 60,
                        margin: EdgeInsets.only(left: 20, right: 20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.track_changes,
                              color: Colors.red,
                            ),
                            border: InputBorder.none,
                            hintText: "Enter Track Number",
                            hintStyle: AppWidget.HeadlineTextfiledStyle(17.0),
                          ),
                          style: TextStyle(color: Colors.black, fontSize: 20.0),
                        ),
                      ),
                      Spacer(),
                      Image.asset("assets/images/home.png", height: 200),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  child: Material(
                    elevation: 2.0,
                    borderRadius: BorderRadius.circular(30),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.only(left: 10.0,right: 10,top: 10,bottom: 10,),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: Colors.black38, width: 2.0),
                      ),
                      child: Row(

                        children: [
                          Image.asset(
                            "assets/images/fast-delivery.png",
                            height: 120,
                            width: 120,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(width: 10),
                          Column(
                            children: [
                              Text(
                                "Order a delivery",
                                style: AppWidget.HeadlineTextfiledStyle(20.0),
                              ),
                              SizedBox(height: 5.0),
                              Container(
                                width: MediaQuery.of(context).size.width / 1.9,
                                child: Text(
                                  "We'll pick it up and deliver it \naccross the town quickly and securely",
                                  textAlign: TextAlign.center,
                                  style:
                                      AppWidget.OrderDeliverySimpleTextfiledStyle(
                                        16.0,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  child: Material(
                    elevation: 2.0,
                    borderRadius: BorderRadius.circular(30),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.only(left: 10.0,right: 10,top: 10,bottom: 10,),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: Colors.black38, width: 2.0),
                      ),
                      child: Row(

                        children: [
                          Image.asset(
                            "assets/images/parcel.png",
                            height: 120,
                            width: 120,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(width: 10),
                          Column(
                            children: [
                              Text(
                                "Track a delivery",
                                style: AppWidget.HeadlineTextfiledStyle(20.0),
                              ),
                              SizedBox(height: 5.0),
                              Container(
                                width: MediaQuery.of(context).size.width / 1.9,
                                child: Text(
                                  "Track your delivery in real-Timefrom pickup to drop-off",
                                  textAlign: TextAlign.center,
                                  style:
                                  AppWidget.OrderDeliverySimpleTextfiledStyle(
                                    16.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  child: Material(
                    elevation: 2.0,
                    borderRadius: BorderRadius.circular(30),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.only(left: 10.0,right: 10,top: 10,bottom: 10,),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: Colors.black38, width: 2.0),
                      ),
                      child: Row(

                        children: [
                          Image.asset(
                            "assets/images/delivery-bike.png",
                            height: 100,
                            width: 100,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(width: 10),
                          Column(
                            children: [
                              Text(
                                "Check delivery history",
                                style: AppWidget.HeadlineTextfiledStyle(20.0),
                              ),
                              SizedBox(height: 5.0),
                              Container(
                                width: MediaQuery.of(context).size.width / 1.9,
                                child: Text(
                                  "Check your delivery history anytime to view details and stay organized",
                                  textAlign: TextAlign.center,
                                  style:
                                  AppWidget.OrderDeliverySimpleTextfiledStyle(
                                    16.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
