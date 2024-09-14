import 'package:adit/main.dart';
import 'package:adit/model/member/member.dart';
import 'package:adit/screen/member_list/member_list_view.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'View,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page, initial: true),
        AutoRoute(page: MemberListRoute.page)
      ];
}
