import 'package:adit/model/charge/members_charge.dart';
import 'package:adit/model/project/project_name.dart';

class Charge {
  final ProjectName projectName;

  // 計算の都合で100 -> 1として扱う
  final int amount;

  Charge({required this.projectName, required this.amount});

  factory Charge.fromCommand(CreateChargeCommand command) {
    return Charge(
        projectName: ProjectName(value: command.projectName),
        amount: command.amount);
  }
}
