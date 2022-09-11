import 'package:jiffy/jiffy.dart';

abstract class ITaskDto {
  String getTitle();

  Jiffy getDate();
  
  String getFormattedDate({String format});

  bool getIsDone();
}
