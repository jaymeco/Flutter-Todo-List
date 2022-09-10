import 'package:flutter/material.dart';
import './styles.dart';

class TaskCardWidget extends StatefulWidget {
  final String title;
  final String date;
  final bool isChecked;

  const TaskCardWidget(
      {Key? key,
      required this.title,
      required this.date,
      required this.isChecked})
      : super(key: key);

  @override
  State<TaskCardWidget> createState() => _TaskCardWidgetState();
}

class _TaskCardWidgetState extends State<TaskCardWidget> {
  final Styles styles = Styles();
  bool isChecked = false;

  @override
  void initState() {
    super.initState();
    isChecked = widget.isChecked;
  } 

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blue.shade100,
      elevation: 0,
      shape: styles.cardShape(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 1, vertical: 5),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: ListTile(
            onTap: () {
              setState(() {
                isChecked = true;
              });
            },
            trailing: Checkbox(
                value: isChecked,
                onChanged: (value) {
                  setState(() {
                    isChecked = !isChecked;
                  });
                }),
            title: Text(widget.title.toUpperCase(), style: styles.cardTitle()),
            subtitle: Text(widget.date, style: styles.cardDescription()),
          ),
        ),
      ),
    );
  }
}
