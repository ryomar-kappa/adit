import 'package:adit/provider/member_master_provider.dart';
import 'package:adit/provider/project_master_provider.dart';
import 'package:adit/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.read(memberMasterProvider);
    ref.read(projectMasterProvider);
    return MaterialApp.router(
      routerConfig: AppRouter().config(),
    );
  }
}
