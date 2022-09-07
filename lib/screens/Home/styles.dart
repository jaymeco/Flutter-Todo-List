import 'package:flutter/material.dart';

class Styles {
  BoxDecoration homeContainer() {
    return const BoxDecoration(
      color: Colors.white12,
    );
  }

  TextStyle pageTitle() {
    return const TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 30,
    );
  }

  TextStyle pageSubtitle() {
    return const TextStyle(
      color: Colors.black54,
      fontSize: 15,
    );
  }
}