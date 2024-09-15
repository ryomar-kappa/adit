import 'dart:io';

import 'package:adit/model/charge/charge.dart';
import 'package:adit/model/charge/year_month.dart';
import 'package:adit/model/member/hrid.dart';

class MembersCharge {
  final HRID hrid;
  final YearMonth yearMonth;
  final List<Charge> chargeList;

  MembersCharge._(
      {required this.hrid, required this.yearMonth, required this.chargeList});

  factory MembersCharge.from(
      HRID hrid, YearMonth yearMonth, List<Charge> chargeList) {
    final totalAmount = chargeList
        .map((charge) => charge.amount)
        .fold(0, (previous, next) => previous + next);
    if (totalAmount != 100) {
      throw CreateMemberChargeException();
    }
    return MembersCharge._(
        hrid: hrid, yearMonth: yearMonth, chargeList: chargeList);
  }
}

class CreateMemberChargeException extends IOException {
  @override
  String toString() => "CreateMemberChargeException";
}
