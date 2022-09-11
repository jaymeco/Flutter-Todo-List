import 'package:flutter/material.dart';
import 'package:todo_list/widgets/ContentPlaceholder/index.dart';
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
                Expanded(
                  flex: 1,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    color: Colors.transparent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Bom dia', style: styles.pageUperTitle()),
                            Text('John doe', style: styles.pageTitle()),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Tarefas de hoje',
                                    style: styles.pageSubtitle()),
                                Text('Quarta-feira, 07/09/2022',
                                    style: styles.pageSubtitle()),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Row(
                            children: [
                              Expanded(
                                  child: TextField(
                                cursorColor: Colors.white,
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
                                  color: Colors.red,
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
                  flex: 2,
                  child: Container(
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 5),
                      decoration: styles.mainTaskContainer(),
                      child: SingleChildScrollView(
                        child: Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Padding(
                                padding: EdgeInsets.symmetric(vertical: 8),
                                child: Text('A FAZER'),
                              ),
                              if (undoneTasks.isEmpty)
                                ContentPlaceholderWidget(
                                    label: 'Sem tarefas a serem feitas!'),
                              Column(
                                children: [
                                  for (var task in undoneTasks)
                                    TaskCardWidget(
                                        title: task['title'],
                                        date: task['finish_date'],
                                        isChecked: false),
                                ],
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(vertical: 8),
                                child: Text('FEITOS'),
                              ),
                              if (doneTasks.isEmpty)
                                ContentPlaceholderWidget(
                                    label: 'Nenhuma tarefa foi feita!'),
                              Column(
                                children: [
                                  for (var task in doneTasks)
                                    TaskCardWidget(
                                        title: task['title'],
                                        date: task['done_date'],
                                        isChecked: true),
                                ],
                              ),
                            ],
                          ),
                        ),
                      )),
                ),
              ]),
        ),
      ),
    );
  }
}
