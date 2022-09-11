import 'package:todo_list/Dtos/contracts/task_dtos.dart';
import 'package:jiffy/jiffy.dart';

class TaskDto implements ITaskDto {
  late String _title;
  late String _date;
  late bool _isDone;

  TaskDto({required String title, required bool isDone, required String date}) {
    _title = title;
    _isDone = isDone;
    _date = date;
  }

  @override
  String getTitle() {
    return _title;
  }

  @override
  Jiffy getDate() {
    return Jiffy(DateTime.parse(_date));
  }
  
  @override
  String getFormattedDate({String format = 'dd/MM/yyyy hh:mm a'}) {
    return getDate().format(format);
  }

  @override
  bool getIsDone() {
    return _isDone;
  }
}
