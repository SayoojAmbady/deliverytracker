import 'dart:ui';

import 'package:flutter/material.dart';

class AppWidget {
  static TextStyle HeadlineTextfiledStyle(double textsize) {
    return TextStyle(
      color: Colors.black,
      fontSize: textsize,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle SimpleTextfiledStyle() {
    return TextStyle(
      color: Colors.black38,
      fontSize: 18.0,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle WhiteTextfiledStyle() {
    return TextStyle(
      color: Colors.white,
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle DifferenetShadeWhiteTextfiledStyle() {
    return TextStyle(
      color: Colors.white54,
      fontSize: 17.0,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle OrderDeliverySimpleTextfiledStyle(double textsize) {
    return TextStyle(
      color: Colors.black38,
      fontSize: textsize,
      fontWeight: FontWeight.w500,
    );
  }
}
