import 'dart:io';

import 'package:adit/model/charge/charge.dart';
import 'package:adit/model/charge/year_month.dart';
import 'package:adit/model/member/hrid.dart';
import 'package:adit/model/project/project_name.dart';

class MembersChargeByMonth {
  final HRID hrid;
  final YearMonth yearMonth;
  final List<Charge> chargeList;

  MembersChargeByMonth._(
      {required this.hrid, required this.yearMonth, required this.chargeList});

  factory MembersChargeByMonth.from(
      HRID hrid, YearMonth yearMonth, List<CreateChargeCommand> commandList) {
    final totalAmount = commandList
        .map((charge) => charge.amount)
        .fold(0, (previous, next) => previous + next);
    if (totalAmount != 100) {
      throw CreateMemberChargeException();
    }

    final chargeList =
        commandList.map((command) => Charge.fromCommand(command)).toList();

    return MembersChargeByMonth._(
        hrid: hrid, yearMonth: yearMonth, chargeList: chargeList);
  }

  Charge? chargeOrNull(ProjectName projectName) {
    return chargeList
        .where((charge) => charge.projectName == projectName)
        .firstOrNull;
  }
}

class CreateMemberChargeException extends IOException {
  @override
  String toString() => "CreateMemberChargeException";
}

class CreateChargeCommand {
  final String projectName;
  final int amount;

  CreateChargeCommand({required this.projectName, required this.amount});
}
