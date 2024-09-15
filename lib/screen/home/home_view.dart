import 'package:adit/router/app_router.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

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
                AutoRouter.of(context).push(const MemberListRoute());
              },
              child: const Text('メンバー一覧画面へ')),
          FilledButton(
              onPressed: () async {
                AutoRouter.of(context).push(const RegisterMemberRoute());
              },
              child: const Text('メンバー登録画面へ')),
          FilledButton(
              onPressed: () async {
                AutoRouter.of(context).push(const ProjectListRoute());
              },
              child: const Text('プロジェクト一覧画面へ')),
          FilledButton(
              onPressed: () async {
                AutoRouter.of(context).push(const RegisterProjectRoute());
              },
              child: const Text('プロジェクト登録画面へ')),
          FilledButton(
              onPressed: () async {
                AutoRouter.of(context).push(const RegisterChargeRoute());
              },
              child: const Text('チャージ登録画面'))
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
