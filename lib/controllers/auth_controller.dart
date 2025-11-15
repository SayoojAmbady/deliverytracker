import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import '../pages/main_navigation.dart';

class AuthController extends GetxController {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  var isLoading = false.obs;

  // --- LOGIN FUNCTION ---
  Future<void> login(String email, String password) async {
    if (email.isEmpty || password.isEmpty) {
      Get.snackbar("Error", "Please fill in all fields");
      return;
    }

    try {
      isLoading.value = true;
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      isLoading.value = false;

      Get.snackbar("Success", "Welcome back!");
      // Navigate to main page
       Get.offAll(() => const MainNavigation());
    } on FirebaseAuthException catch (e) {
      isLoading.value = false;
      Get.snackbar("Login Failed", e.message ?? "Unknown error occurred");
    }
  }

  // --- REGISTER FUNCTION ---
  Future<void> register(String name, String email, String password) async {
    if (name.isEmpty || email.isEmpty || password.isEmpty) {
      Get.snackbar("Error", "All fields are required");
      return;
    }

    try {
      isLoading.value = true;

      // Create user in Firebase Auth
      UserCredential userCredential = await _auth
          .createUserWithEmailAndPassword(email: email, password: password);

      // Store user data in Firestore
      await _firestore.collection('users').doc(userCredential.user!.uid).set({
        'name': name,
        'email': email,
        'createdAt': FieldValue.serverTimestamp(),
      });

      isLoading.value = false;
      Get.back();
      Get.snackbar("Registration Successful", "Please login to continue");
    } on FirebaseAuthException catch (e) {
      isLoading.value = false;
      Get.snackbar("Registration Failed", e.message ?? "Something went wrong");
    }
  }

  // --- LOGOUT FUNCTION ---
  Future<void> logout() async {
    await _auth.signOut();
    Get.offAllNamed('/login');
  }

  // --- PASSWORD RESET FUNCTION ---
  Future<void> resetPassword(String email) async {
    if (email.isEmpty) {
      Get.snackbar("Error", "Please enter your email");
      return;
    }

    try {
      await _auth.sendPasswordResetEmail(email: email.trim());
      Get.snackbar("Email Sent", "Check your inbox to reset your password");
    } on FirebaseAuthException catch (e) {
      Get.snackbar("Error", e.message ?? "Unable to send reset email");
    }
  }



}
