import 'package:flutter/material.dart';
import 'package:deliverytracker/services/widget_support.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Orders Page", style: AppWidget.HeadlineTextfiledStyle(24.0)),
    );
  }
}

