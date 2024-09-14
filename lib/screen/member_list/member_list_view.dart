import 'package:adit/model/member/member.dart';
import 'package:adit/screen/_common/async_value_widget.dart';
import 'package:adit/screen/member_list/member_list_presenter.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class MemberListView extends ConsumerWidget {
  const MemberListView({
    super.key,
  });
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.watch(memberListPresenter);
    return Scaffold(
      body: AsyncValueWidget(
        value: viewModel,
        buildData: (viewModel) => Column(
          children: [
            Row(
              children: [
                FilledButton(
                    onPressed: () => AutoRouter.of(context).maybePop(),
                    child: const Text('戻る'))
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    for (final member in viewModel.memberList)
                      _memberRow(member)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _memberRow(Member member) {
    return Container(
      decoration: BoxDecoration(border: Border.all(color: Colors.black)),
      child: Row(
        children: [
          Text(member.name.fullName),
          Text('BN ${member.bn.yearOfJoined.toString()}')
        ],
      ),
    );
  }
}
