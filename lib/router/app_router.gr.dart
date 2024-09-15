// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

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
/// [MemberDetailView]
class MemberDetailRoute extends PageRouteInfo<MemberDetailRouteArgs> {
  MemberDetailRoute({
    Key? key,
    required Member member,
    List<PageRouteInfo>? children,
  }) : super(
          MemberDetailRoute.name,
          args: MemberDetailRouteArgs(
            key: key,
            member: member,
          ),
          initialChildren: children,
        );

  static const String name = 'MemberDetailRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<MemberDetailRouteArgs>();
      return MemberDetailView(
        key: args.key,
        member: args.member,
      );
    },
  );
}

class MemberDetailRouteArgs {
  const MemberDetailRouteArgs({
    this.key,
    required this.member,
  });

  final Key? key;

  final Member member;

  @override
  String toString() {
    return 'MemberDetailRouteArgs{key: $key, member: $member}';
  }
}

/// generated route for
/// [MemberListView]
class MemberListRoute extends PageRouteInfo<void> {
  const MemberListRoute({List<PageRouteInfo>? children})
      : super(
          MemberListRoute.name,
          initialChildren: children,
        );

  static const String name = 'MemberListRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const MemberListView();
    },
  );
}

/// generated route for
/// [ProjectListView]
class ProjectListRoute extends PageRouteInfo<void> {
  const ProjectListRoute({List<PageRouteInfo>? children})
      : super(
          ProjectListRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProjectListRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ProjectListView();
    },
  );
}

/// generated route for
/// [RegisterChargeView]
class RegisterChargeRoute extends PageRouteInfo<void> {
  const RegisterChargeRoute({List<PageRouteInfo>? children})
      : super(
          RegisterChargeRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisterChargeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const RegisterChargeView();
    },
  );
}

/// generated route for
/// [RegisterMemberView]
class RegisterMemberRoute extends PageRouteInfo<void> {
  const RegisterMemberRoute({List<PageRouteInfo>? children})
      : super(
          RegisterMemberRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisterMemberRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const RegisterMemberView();
    },
  );
}

/// generated route for
/// [RegisterProjectView]
class RegisterProjectRoute extends PageRouteInfo<void> {
  const RegisterProjectRoute({List<PageRouteInfo>? children})
      : super(
          RegisterProjectRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisterProjectRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const RegisterProjectView();
    },
  );
}
