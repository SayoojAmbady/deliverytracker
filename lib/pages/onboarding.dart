
import 'package:flutter/material.dart';

import '../services/widget_support.dart';


class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          child: Column(
            children: [Image.asset("assets/images/onboard.png"),
              Text("Track your parcel\nfrom anywhere" , style: AppWidget.HeadlineTextfiledStyle(30.0),
                textAlign: TextAlign.center,),
              SizedBox(height: 30),
              Text("Check the Progress of\n your deliveries" , style: AppWidget.SimpleTextfiledStyle(),
                textAlign: TextAlign.center,),
              SizedBox(height: 30,),
              Material(
                elevation: 3.0,
                borderRadius: BorderRadius.circular(40),
                child: Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width/1.7,
                  decoration: BoxDecoration(
                      color: Color(0xfff8ae39),
                      borderRadius: BorderRadius.circular(40)
                  ),
                  child: Center(child: Text("Track Now", style: AppWidget.WhiteTextfiledStyle(),),),
                ),
              )
            ],
          ),),
      ),
    );

  }
}