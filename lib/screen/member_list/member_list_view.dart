import 'package:adit/model/member/member.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class MemberListView extends StatelessWidget {
  final List<Member> memberList;

  const MemberListView({super.key, required this.memberList});
  @override
  Widget build(BuildContext context) {
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
                children: [for (final member in memberList) _memberRow(member)],
              ),
            ),
          ),
        ],
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
