import 'package:adit/model/member/member.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: MemberDetailView(),
      ),
    );
  }
}

class MemberDetailView extends StatelessWidget {
  const MemberDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [MemberDetailHeaderView()],
    );
  }
}

class MemberDetailHeaderView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [Text('高山 龍馬'), Text('BN2023'), Text('自覚5'), Text('マインド5')],
    );
  }
}

@RoutePage()
class MemberListView extends StatelessWidget {
  final List<Member> memberList;

  const MemberListView({super.key, required this.memberList});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [],
      ),
    );
  }

  Widget _memberRow() {
    return Row(
      children: [],
    );
  }
}
