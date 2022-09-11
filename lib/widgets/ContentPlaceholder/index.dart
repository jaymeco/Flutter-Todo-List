import 'package:flutter/material.dart';
import './styles.dart';

class ContentPlaceholderWidget extends StatelessWidget {
  final String label;

  ContentPlaceholderWidget({Key? key, required this.label}) : super(key: key);

  final Styles styles = Styles();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 200,
      decoration: styles.mainContainer(),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              Icons.info_outline,
              size: 30,
              color: Colors.blue.shade100,
            ),
            Text(
              label,
              style: styles.placeholderLabel(),
            ),
          ]),
    );
  }
}
