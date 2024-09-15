import 'package:adit/model/charge/members_charge.dart';
import 'package:adit/model/charge/year_month.dart';
import 'package:adit/model/member/member.dart';
import 'package:adit/model/project/project_name.dart';
import 'package:adit/screen/_common/async_value_widget.dart';
import 'package:adit/screen/member_detail/member_detail_presenter.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

const cellHeight = 50.0;

@RoutePage()
class MemberDetailView extends ConsumerWidget {
  final Member member;

  const MemberDetailView({super.key, required this.member});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: AsyncValueWidget(
          value: ref.watch(memberDetailPresenter(member)),
          buildData: (viewModel) =>
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                _headerRow(viewModel.targetYearMonth),
                Row(
                  children: [
                    Expanded(child: _headerColumn(viewModel.projectNameList)),
                    ...viewModel.targetYearMonth.map((yearMonth) {
                      final charge = viewModel.monthlyCharge(yearMonth);
                      return Expanded(
                          child:
                              _chargeColumn(charge, viewModel.projectNameList));
                    })
                  ],
                )
              ])),
    );
  }

  Widget _headerRow(List<YearMonth> yearMonthList) {
    return Row(
      children: [
        const Spacer(),
        ...yearMonthList.map((yearMonth) =>
            Expanded(child: Text('${yearMonth.year}年${yearMonth.month}月')))
      ],
    );
  }

  Widget _headerColumn(Set<ProjectName> projectNameSet) {
    return Column(
      children: projectNameSet
          .map((projectName) => Container(
              alignment: Alignment.center,
              height: cellHeight,
              child: Text(projectName.value)))
          .toList(),
    );
  }

  Widget _chargeColumn(
      MembersChargeByMonth? chargeList, Set<ProjectName> projectnameSet) {
    return Column(
      children: projectnameSet.map((projectName) {
        final charge = chargeList?.chargeOrNull(projectName);
        if (charge == null) {
          return Container(
            height: cellHeight,
          );
        }
        return Container(
            alignment: Alignment.center,
            height: cellHeight,
            child: Text(charge.amount.toString()));
      }).toList(),
    );
  }
}
