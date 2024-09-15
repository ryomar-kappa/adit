import 'package:adit/model/charge/year_month.dart';
import 'package:adit/model/member/member.dart';
import 'package:adit/screen/_common/async_value_widget.dart';
import 'package:adit/screen/member_detail/member_detail_presenter.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class MemberDetailView extends ConsumerWidget {
  final Member member;

  const MemberDetailView({super.key, required this.member});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: AsyncValueWidget(
          value: ref.watch(memberDetailPresenter(member)),
          buildData: (viewModel) => Column(children: [
                _headerRow(viewModel.targetYearMonth),
              ])),
    );
  }

  Widget _headerRow(List<YearMonth> yearMonthList) {
    return Row(
      children: yearMonthList
          .map((yearMonth) =>
              Flexible(child: Text('${yearMonth.year}年${yearMonth.month}月')))
          .toList(),
    );
  }
}
