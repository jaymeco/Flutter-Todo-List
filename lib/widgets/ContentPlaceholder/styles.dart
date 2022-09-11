import 'package:flutter/material.dart';

class Styles {
  BoxDecoration mainContainer() {
    return BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: const BorderRadius.all(Radius.circular(15)));
  }

  TextStyle placeholderLabel() {
    return TextStyle(
      fontSize: 20,
      color: Colors.blue.shade100,
    );
  }
}
