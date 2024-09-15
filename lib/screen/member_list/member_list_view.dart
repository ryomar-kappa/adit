import 'package:adit/model/member/member.dart';
import 'package:adit/provider/member_master_provider.dart';
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
          Expanded(
            child: SingleChildScrollView(
              child: Wrap(
                children: memberList
                    .map((member) => _memberCard(
                        member,
                        (member) => AutoRouter.of(context)
                            .push(MemberDetailRoute(member: member))))
                    .toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _memberCard(Member member, void Function(Member member) onTap) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        onTap(member);
      },
      child: SizedBox(
        width: 150,
        height: 100,
        child: Card(
          child: Column(
            children: [
              Text(member.name.fullName),
              Text('BN ${member.bn.yearOfJoined.toString()}')
            ],
          ),
        ),
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
