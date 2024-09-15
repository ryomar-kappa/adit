import 'package:adit/model/member/member.dart';
import 'package:adit/provider/member_list_provider.dart';
import 'package:adit/router/app_router.dart';
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
    final memberList = ref.watch(memberMasterProvider);
    return Scaffold(
      body: Column(
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
                  for (final member in memberList)
                    _memberRow(
                        member,
                        (member) => AutoRouter.of(context)
                            .push(MemberDetailRoute(member: member)))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _memberRow(Member member, void Function(Member member) onTap) {
    return GestureDetector(
      onTap: () => onTap(member),
      child: Container(
        decoration: BoxDecoration(border: Border.all(color: Colors.black)),
        child: Row(
          children: [
            Text(member.name.fullName),
            Text('BN ${member.bn.yearOfJoined.toString()}')
          ],
        ),
      ),
    );
  }
}
