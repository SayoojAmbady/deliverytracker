



import 'package:deliverytracker/pages/home.dart';
import 'package:deliverytracker/pages/main_navigation.dart';
import 'package:deliverytracker/pages/onboarding.dart';
import 'package:deliverytracker/pages/post.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Delivery Tracker',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: '/main',
      getPages: [
        GetPage(name: '/onboarding', page: () => Onboarding()),
        GetPage(name: '/home', page: () => Home()),
        GetPage(name: '/post', page: () => PostPage()),
        GetPage(name: '/main', page: () => MainNavigation()),
      ],
    );
  }
}
