import 'package:get/get.dart';
import 'package:flutter/material.dart';

class PostController extends GetxController {
  // Reactive text controllers for pickup and drop-off
  final pickupController = TextEditingController().obs;
  final dropoffController = TextEditingController().obs;

  // User details
  final pickupNameController = TextEditingController().obs;
  final pickupPhoneController = TextEditingController().obs;
  final dropoffNameController = TextEditingController().obs;
  final dropoffPhoneController = TextEditingController().obs;

  // Example reactive total price
  var totalPrice = 80.0.obs;

  void submitLocation() {
    print("Pickup: ${pickupController.value.text}");
    print("Dropoff: ${dropoffController.value.text}");
  }

  void placeOrder() {
    print("Order placed!");
  }

  @override
  void onClose() {
    pickupController.value.dispose();
    dropoffController.value.dispose();
    pickupNameController.value.dispose();
    pickupPhoneController.value.dispose();
    dropoffNameController.value.dispose();
    dropoffPhoneController.value.dispose();
    super.onClose();
  }
}
