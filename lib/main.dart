



import 'package:deliverytracker/pages/home.dart';
import 'package:deliverytracker/pages/login_page.dart';
import 'package:deliverytracker/pages/main_navigation.dart';
import 'package:deliverytracker/pages/onboarding.dart';
import 'package:deliverytracker/pages/post.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
      initialRoute: '/login',
      getPages: [
        GetPage(name: '/onboarding', page: () => Onboarding()),
        GetPage(name: '/home', page: () => Home()),
        GetPage(name: '/post', page: () => PostPage()),
        GetPage(name: '/main', page: () => MainNavigation()),
        GetPage(name: '/login', page: () => LoginPage()),
      ],
    );
  }
}
