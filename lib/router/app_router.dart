import 'package:auto_route/auto_route.dart';

@AutoRouterConfig(replaceInRouteName: 'View,Route')
class AppRouter extends RootStackRouter {

   @override
  RouteType get defaultRouteType => RouteType.material(); 
  @override
  List<AutoRoute> get routes => [AutoRoute(page: )];
}
