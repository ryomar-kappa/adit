// 保存時の自動整形でfoundationが消えないように警告を消している
// ignore: unused_import, directives_ordering
import 'package:adit/model/charge/members_charge.dart';
import 'package:adit/model/charge/year_month.dart';
import 'package:adit/model/member/member.dart';
import 'package:adit/model/project/project_name.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'member_detail_view_model.freezed.dart';

@freezed
class MemberDetailViewModel with _$MemberDetailViewModel {
  // プライベートコンストラクタを追加
  const MemberDetailViewModel._();
  const factory MemberDetailViewModel({
    required Member member,
    required List<MembersChargeByMonth> membersChargeList,
  }) = _MemberDetailViewModel;

  Set<ProjectName> get projectNameList => membersChargeList
      .map((memberCharge) => memberCharge.chargeList)
      .expand((element) => element)
      .map((charge) => charge.projectName)
      .toSet();

  // FIXME:現時点では2024年固定
  List<YearMonth> get targetYearMonth =>
      List.generate(12, (index) => YearMonth(year: 2024, month: index + 1));

  MembersChargeByMonth? monthlyCharge(YearMonth yearMonth) {
    return membersChargeList
        .where((membersCharge) => membersCharge.yearMonth == yearMonth)
        .firstOrNull;
  }
}
