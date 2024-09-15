import 'package:adit/model/charge/charge.dart';
import 'package:adit/model/charge/members_charge.dart';
import 'package:adit/model/charge/year_month.dart';
import 'package:adit/model/member/hrid.dart';
import 'package:adit/model/project/project_name.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final charge1 = MembersChargeByMonth.from(
    HRID(hrid: '101284'),
    YearMonth(year: 2024, month: 1),
    [Charge(projectName: ProjectName(value: 'Tiger'), amount: 100)]);

final charge2 = MembersChargeByMonth.from(
    HRID(hrid: '101284'), YearMonth(year: 2024, month: 2), [
  Charge(projectName: ProjectName(value: 'Tiger'), amount: 50),
  Charge(projectName: ProjectName(value: 'Blooms'), amount: 50)
]);

final serverChargeList = [charge1, charge2];

final chargeRepository =
    Provider<ChargeRepository>((ref) => ChargeRepository());

class ChargeRepository {
  Future<List<MembersChargeByMonth>> fetchChargeByHrid(HRID hrid) async {
    return serverChargeList;
  }
}
