import 'package:adit/screen/home/home_view.dart';
import 'package:adit/screen/member_list/member_list_view.dart';
import 'package:adit/screen/project_list/project_list_view.dart';
import 'package:adit/screen/register_member/register_member_view.dart';
import 'package:auto_route/auto_route.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'View,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page, initial: true),
        AutoRoute(page: MemberListRoute.page),
        AutoRoute(page: CreateMemberRoute.page)
      ];
}
