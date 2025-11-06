import 'package:deliverytracker/services/Button_Class.dart';
import 'package:deliverytracker/services/widget_support.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/post_controller.dart';

class PostPage extends StatelessWidget {
   PostPage({super.key});

  final PostController controller = Get.put(PostController());

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xff6053f8),
      body: SafeArea(
        top: true,
        bottom: false,
        child: Column(
          children: [
            Center(
              child: Text("Add Package", style: AppWidget.WhiteTextfiledStyle()),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Container(
                width: width,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
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
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text("Add Location",
                          style: AppWidget.HeadlineTextfiledStyle(22.0)),
                      const SizedBox(height: 20),
                      _buildInputField(
                        label: "Pick Up",
                        controller: controller.pickupController.value,
                        hint: "Enter Pick Up Location",
                      ),
                      const SizedBox(height: 20),
                      _buildInputField(
                        label: "Drop-Off",
                        controller: controller.dropoffController.value,
                        hint: "Enter DropOff Location",
                      ),
                      const SizedBox(height: 20),
                      Center(
                        child: CustomButton(
                          onPressed: controller.submitLocation,
                          text: "Submit Location",
                          width: width / 2,
                        ),
                      ),
                      const SizedBox(height: 40),
                      _buildDetailsSection(
                        title: "Pick-Up-Details",
                        addressController: controller.pickupController.value,
                        nameController: controller.pickupNameController.value,
                        phoneController: controller.pickupPhoneController.value,
                      ),
                      const SizedBox(height: 40),
                      _buildDetailsSection(
                        title: "Drop-off-Details",
                        addressController: controller.dropoffController.value,
                        nameController: controller.dropoffNameController.value,
                        phoneController: controller.dropoffPhoneController.value,
                      ),
                      const SizedBox(height: 35),
                      Obx(() => Container(
                        padding: const EdgeInsets.all(10),
                        width: width,
                        decoration: BoxDecoration(
                          border:
                          Border.all(color: Colors.black45, width: 2.0),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text("Total Price",
                                    style:
                                    AppWidget.NomalTextfiledStyle(18.0)),
                                Text("\$${controller.totalPrice.value}",
                                    style: AppWidget.HeadlineTextfiledStyle(
                                        28.0)),
                              ],
                            ),
                            CustomButton(
                              text: "Place Order",
                              onPressed: controller.placeOrder,
                              width: width / 2.5,
                            )
                          ],
                        ),
                      )),
                      const SizedBox(height: 130),
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

  //  Reusable helper widgets
  Widget _buildInputField({
    required String label,
    required TextEditingController controller,
    required String hint,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: AppWidget.NomalTextfiledStyle(20.0)),
        const SizedBox(height: 10),
        Container(
          decoration: BoxDecoration(
            color: const Color(0xFFececf8),
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextField(
            controller: controller,
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hint,
              hintStyle: AppWidget.AdjustSimpleTextfiledStyle(15.0),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildDetailsSection({
    required String title,
    required TextEditingController addressController,
    required TextEditingController nameController,
    required TextEditingController phoneController,
  }) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black45, width: 2.0),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Center(
              child: Text(title,
                  style: AppWidget.HeadlineTextfiledStyle(22.0))),
          const SizedBox(height: 10),
          _buildIconTextField(
              icon: Icons.location_on,
              hint: "Enter Address",
              controller: addressController),
          _buildIconTextField(
              icon: Icons.person,
              hint: "Enter User Name",
              controller: nameController),
          _buildIconTextField(
              icon: Icons.phone,
              hint: "Enter Phone Number",
              controller: phoneController),
        ],
      ),
    );
  }

  Widget _buildIconTextField({
    required IconData icon,
    required String hint,
    required TextEditingController controller,
  }) {
    return Row(
      children: [
        Icon(icon, color: const Color(0xff6053f8), size: 30),
        const SizedBox(width: 10),
        Expanded(
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
              hintText: hint,
              enabledBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.black26),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
