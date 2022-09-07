import 'package:flutter/material.dart';

class Styles {
  TextStyle cardTitle() {
    return TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 15,
      color: Colors.blue.shade300,
    );
  }

  TextStyle cardDescription() {
    return TextStyle(
      fontSize: 13,
      overflow: TextOverflow.ellipsis,
      color: Colors.grey.shade400,
    );
  }
}
