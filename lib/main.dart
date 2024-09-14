import 'package:adit/model/member/awareness_lebes.dart';
import 'package:adit/model/member/bn.dart';
import 'package:adit/model/member/hrid.dart';
import 'package:adit/model/member/member.dart';
import 'package:adit/model/member/member_name.dart';
import 'package:adit/model/member/mind_lebel.dart';
import 'package:adit/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

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
  runApp(const ProviderScope(child: MainApp()));
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
