import 'package:adit/model/member/awareness_lebes.dart';
import 'package:adit/model/member/bn.dart';
import 'package:adit/model/member/hrid.dart';
import 'package:adit/model/member/member.dart';
import 'package:adit/model/member/member_name.dart';
import 'package:adit/model/member/mind_lebel.dart';
import 'package:adit/router/app_router.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

final ryoma = Member(
    name: MemberName(fullName: '高山龍馬'),
    bn: BN(yearOfJoined: 1),
    awarenessLebel: AwarenessLebel(lebel: 1),
    mind: MindLebel(lebel: 1),
    id: HRID(hrid: '101284'));

final ryoma2 = Member(
    name: MemberName(fullName: '高山龍馬'),
    bn: BN(yearOfJoined: 1),
    awarenessLebel: AwarenessLebel(lebel: 1),
    mind: MindLebel(lebel: 1),
    id: HRID(hrid: '101284'));

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter().config(),
    );
  }
}

@RoutePage()
class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          MemberDetailHeaderView(),
          FilledButton(
              onPressed: () async {
                AutoRouter.of(context)
                    .push(MemberListRoute(memberList: <Member>[ryoma, ryoma2]));
              },
              child: const Text('会員一覧画面へ'))
        ],
      ),
    );
  }
}

class MemberDetailHeaderView extends StatelessWidget {
  const MemberDetailHeaderView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [Text('高山 龍馬'), Text('BN2023'), Text('自覚5'), Text('マインド5')],
    );
  }
}
