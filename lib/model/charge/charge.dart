import 'package:adit/model/project/project_name.dart';

class Charge {
  final ProjectName projectName;

  // 計算の都合で100 -> 1として扱う
  final int amount;

  Charge({required this.projectName, required this.amount});
}
