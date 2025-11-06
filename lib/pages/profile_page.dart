import 'package:flutter/material.dart';
import 'package:deliverytracker/services/widget_support.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Profile Page", style: AppWidget.HeadlineTextfiledStyle(24.0)),
    );
  }
}
