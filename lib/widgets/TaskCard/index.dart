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
      color: Colors.blue.shade50,
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 18),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Row(
            children: [
              Checkbox(
                  value: isChecked,
                  onChanged: (value) {
                    setState(() {
                      isChecked = !isChecked;
                    });
                  }),
              SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(widget.title, style: styles.cardTitle()),
                    Text(
                      'Data de finalização: ${widget.date}',
                      style: styles.cardDescription(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
