import 'package:flutter/material.dart';
import '../../widgets/TaskCard/index.dart';
import './styles.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  State<HomePageWidget> createState() => _HomePageWidget();
}

class _HomePageWidget extends State<HomePageWidget> {
  final Styles styles = Styles();
  final List undoneTasks = [];
  final List doneTasks = [];
  final controller = TextEditingController();

  void addTask() {
    if (controller.text != '') {
      setState(() {
        undoneTasks
            .add({'title': controller.text, 'finish_date': '07/09/2022 18:00'});
      });
      controller.clear();
    }
  }

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
                Container(
                  color: Colors.blue.shade400,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Tarefas', style: styles.pageTitle()),
                        Text('Quarta-feira, 07/09/2022',
                            style: styles.pageSubtitle()),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Row(
                            children: [
                              Expanded(
                                  child: TextField(
                                onSubmitted: (value) {
                                  if (value != '') {
                                    setState(() {
                                      undoneTasks.add({
                                        'title': value,
                                        'finish_date': '07/09/2022 18:00'
                                      });
                                    });
                                    controller.clear();
                                  }
                                },
                                controller: controller,
                                decoration: styles.addTaskField(),
                              )),
                              IconButton(
                                  color: Colors.blue,
                                  onPressed: addTask,
                                  icon: const Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                        child: Text('A FAZER'),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          children: [
                            for (var task in undoneTasks)
                              TaskCardWidget(
                                  title: task['title'],
                                  date: task['finish_date'],
                                  isChecked: false),
                          ],
                        ),
                      ),
                      const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                        child: Text('FEITOS'),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          children: [
                            for (var task in doneTasks)
                              TaskCardWidget(
                                  title: task['title'],
                                  date: task['done_date'],
                                  isChecked: true),
                          ],
                        ),
                      ),
                    ],
                  )),
                )
              ]),
        ),
      ),
    );
  }
}
