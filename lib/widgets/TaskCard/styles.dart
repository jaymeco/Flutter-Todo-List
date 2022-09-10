import 'package:flutter/material.dart';

class Styles {
  TextStyle cardTitle() {
    return const TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 15,
      color: Colors.black,
    );
  }

  TextStyle cardDescription() {
    return const TextStyle(
      fontSize: 13,
      overflow: TextOverflow.ellipsis,
      color: Colors.black45,
    );
  }

  RoundedRectangleBorder cardShape() {
    return const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(15)));
  }
}
