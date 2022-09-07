import 'package:flutter/material.dart';
import './styles.dart';

class HomePageWidget extends StatelessWidget {
  HomePageWidget({super.key});
  Styles styles = Styles();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: styles.homeContainer(),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Tarefas', style: styles.pageTitle()),
                      Text('Quarta-feira, 07/09/2022',
                          style: styles.pageSubtitle()),
                    ],
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
