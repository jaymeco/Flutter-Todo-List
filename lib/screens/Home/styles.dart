import 'package:flutter/material.dart';

class Styles {
  BoxDecoration homeContainer() {
    return BoxDecoration(
      color: Colors.grey.shade100,
    );
  }

  TextStyle pageTitle() {
    return const TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 30,
    );
  }

  TextStyle pageSubtitle() {
    return const TextStyle(
      color: Colors.white60,
      fontSize: 15,
    );
  }

  InputDecoration addTaskField() {
    return const InputDecoration(
      hintText: 'Adicionar tarefa',
      contentPadding: EdgeInsets.symmetric(horizontal: 8),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50))),
    );
  }
}
