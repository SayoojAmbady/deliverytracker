import 'package:deliverytracker/services/Button_Class.dart';
import 'package:deliverytracker/services/widget_support.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostPage extends StatefulWidget {
  const PostPage({super.key});

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff6053f8),
      body: SafeArea(
        top: true,
        bottom: false,
        child: Column(
          children: [
            Center(
              child: Text(
                "Add Package",
                style: AppWidget.WhiteTextfiledStyle(),
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Image.asset(
                          "assets/images/delivery-truck.png",
                          height: 170,
                          width: 170,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Add Location",
                        style: AppWidget.HeadlineTextfiledStyle(22.0),
                      ),
                      SizedBox(height: 20.0),
                      Text(
                        "Pick Up",
                        style: AppWidget.NomalTextfiledStyle(20.0),
                      ),

                      Container(
                        margin: EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          color: Color(0xFFececf8),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Enter Pick Up Location",
                            hintStyle: AppWidget.AdjustSimpleTextfiledStyle(
                              15.0,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Text(
                        "Drop-Off",
                        style: AppWidget.NomalTextfiledStyle(20.0),
                      ),

                      Container(
                        margin: EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          color: Color(0xFFececf8),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Enter DropOff Location",
                            hintStyle: AppWidget.AdjustSimpleTextfiledStyle(
                              15.0,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Center(
                        child: CustomButton(
                          onPressed: () {
                            print("Button Pressed");
                          },
                          text: "Submit Location",
                          width: MediaQuery.of(context).size.width / 2,
                        ),
                      ),
                      SizedBox(height: 40),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black45, width: 2.0),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Text(
                                "Pick-Up-Details",
                                style: AppWidget.HeadlineTextfiledStyle(22.0),
                              ),
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  color: Color(0xff6053f8),
                                  size: 30,
                                ),
                                SizedBox(width: 10),
                                Expanded(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: "Enter Pick-up Address",
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.black26,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 10),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  color: Color(0xff6053f8),
                                  size: 30,
                                ),
                                SizedBox(width: 10),
                                Expanded(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: "Enter User Name",
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.black26,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 10),
                            Row(
                              children: [
                                Icon(
                                  Icons.phone,
                                  color: Color(0xff6053f8),
                                  size: 30,
                                ),
                                SizedBox(width: 10),
                                Expanded(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: "Enter Phone Number",
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.black26,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 40),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black45, width: 2.0),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Text(
                                "Drop-off-Details",
                                style: AppWidget.HeadlineTextfiledStyle(22.0),
                              ),
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  color: Color(0xff6053f8),
                                  size: 30,
                                ),
                                SizedBox(width: 10),
                                Expanded(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: "Enter Drop-off Address",
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.black26,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 10),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  color: Color(0xff6053f8),
                                  size: 30,
                                ),
                                SizedBox(width: 10),
                                Expanded(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: "Enter User Name",
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.black26,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 10),
                            Row(
                              children: [
                                Icon(
                                  Icons.phone,
                                  color: Color(0xff6053f8),
                                  size: 30,
                                ),
                                SizedBox(width: 10),
                                Expanded(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: "Enter Phone Number",
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.black26,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 35),
                      Container(
                      padding: EdgeInsets.only(left: 10,bottom: 10,top: 10),
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration( border: Border.all(color: Colors.black45, width: 2.0),
                          borderRadius: BorderRadius.circular(20),),
                        child: Row(
                          children: [
                         Column(

                           children: [
                             Text("Total Price",style: AppWidget.NomalTextfiledStyle(18.0)),
                             Text("\$80",style: AppWidget.HeadlineTextfiledStyle(28.0),)
                           ],
                         )
                          ],
                        ),
                      ),
                      SizedBox(height: 80)
                    ],
                  ),

                ),
              ),

            ),
          ],
        ),

      ),
    );
  }
}
