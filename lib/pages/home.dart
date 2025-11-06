import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';
import '../services/widget_support.dart';

class Home extends StatelessWidget {
  Home({super.key});
  final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.location_on, color: Color(0xff6053f8), size: 29.0),
                  const SizedBox(width: 6),
                  Text("Current Location", style: AppWidget.SimpleTextfiledStyle()),
                ],
              ),
              const SizedBox(height: 8),
              Text("City Avenue, New York", style: AppWidget.HeadlineTextfiledStyle(18.0)),
              const SizedBox(height: 10),

              Container(
                width: screenWidth,
                height: screenHeight / 2.0,
                decoration: BoxDecoration(
                  color: const Color(0xff6053f8),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 30),
                    Text("Track Your Shipment", style: AppWidget.WhiteTextfiledStyle()),
                    const SizedBox(height: 10),
                    Text("Please enter your Tracking number",
                        style: AppWidget.DifferenetShadeWhiteTextfiledStyle()),
                    const SizedBox(height: 30),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextField(
                        onChanged: (val) => controller.trackNumber.value = val,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.track_changes, color: Colors.red),
                          border: InputBorder.none,
                          hintText: "Enter Track Number",
                          hintStyle: AppWidget.HeadlineTextfiledStyle(17.0),
                        ),
                        style: const TextStyle(color: Colors.black, fontSize: 20.0),
                      ),
                    ),
                    const Spacer(),
                    Image.asset("assets/images/home.png", height: 200),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              _buildOptionCard(
                context,
                "assets/images/fast-delivery.png",
                "Order a delivery",
                "We'll pick it up and deliver it across the town quickly and securely",
              ),
              const SizedBox(height: 15),
              _buildOptionCard(
                context,
                "assets/images/parcel.png",
                "Track a delivery",
                "Track your delivery in real-time from pickup to drop-off",
              ),
              const SizedBox(height: 15),
              _buildOptionCard(
                context,
                "assets/images/delivery-bike.png",
                "Check delivery history",
                "Check your delivery history anytime to stay organized",
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildOptionCard(BuildContext context, String img, String title, String desc) {
    return Material(
      elevation: 2.0,
      borderRadius: BorderRadius.circular(30),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: Colors.black38, width: 2.0),
        ),
        child: Row(
          children: [
            Image.asset(img, height: 100, width: 100, fit: BoxFit.cover),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: AppWidget.HeadlineTextfiledStyle(20.0)),
                  const SizedBox(height: 5),
                  Text(desc,
                      textAlign: TextAlign.center,
                      style: AppWidget.OrderDeliverySimpleTextfiledStyle(16.0)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
