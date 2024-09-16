import 'package:adit/screen/member_list/member_list_view.dart';
import 'package:adit/screen/project_list/project_list_view.dart';
import 'package:adit/screen/register_charge/view/register_charge_view.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('ホーム'),
          bottom: TabBar(tabs: [
            Tab(
              text: 'メンバー',
            ),
            Tab(
              text: 'プロジェクト',
            ),
            Tab(
              text: 'チャージ登録',
            )
          ]),
        ),
        body: TabBarView(children: [
          MemberListView(),
          ProjectListView(),
          RegisterChargeView()
        ]),
      ),
    );
  }
}
