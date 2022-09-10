import 'package:flutter/material.dart';

class Styles {
  BoxDecoration homeContainer() {
    return BoxDecoration(
      color: Colors.blue.shade400,
    );
  }

  TextStyle pageUperTitle() {
    return const TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w200,
      fontSize: 30,
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
    const OutlineInputBorder inputBorder = OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.transparent,
        ),
        borderRadius: BorderRadius.all(Radius.circular(10)));

    return const InputDecoration(
      hintText: 'Adicionar tarefa',
      contentPadding: EdgeInsets.symmetric(horizontal: 8),
      border: inputBorder,
      enabledBorder: inputBorder,
      focusedBorder: inputBorder,
      filled: true,
      fillColor: Colors.white30,
      hintStyle: TextStyle(color: Colors.white),
    );
  }

  BoxDecoration mainTaskContainer() {
    return const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(35), topRight: Radius.circular(35)));
  }
}
