// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [CreateMemberView]
class CreateMemberRoute extends PageRouteInfo<void> {
  const CreateMemberRoute({List<PageRouteInfo>? children})
      : super(
          CreateMemberRoute.name,
          initialChildren: children,
        );

  static const String name = 'CreateMemberRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const CreateMemberView();
    },
  );
}

/// generated route for
/// [HomeView]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const HomeView();
    },
  );
}

/// generated route for
/// [MemberListView]
class MemberListRoute extends PageRouteInfo<MemberListRouteArgs> {
  MemberListRoute({
    Key? key,
    required List<Member> memberList,
    List<PageRouteInfo>? children,
  }) : super(
          MemberListRoute.name,
          args: MemberListRouteArgs(
            key: key,
            memberList: memberList,
          ),
          initialChildren: children,
        );

  static const String name = 'MemberListRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<MemberListRouteArgs>();
      return MemberListView(
        key: args.key,
        memberList: args.memberList,
      );
    },
  );
}

class MemberListRouteArgs {
  const MemberListRouteArgs({
    this.key,
    required this.memberList,
  });

  final Key? key;

  final List<Member> memberList;

  @override
  String toString() {
    return 'MemberListRouteArgs{key: $key, memberList: $memberList}';
  }
}
