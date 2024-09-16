import 'package:adit/model/project/project.dart';
import 'package:adit/provider/project_master_provider.dart';
import 'package:adit/router/app_router.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class ProjectListView extends ConsumerWidget {
  const ProjectListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final projectList = ref.watch(projectMasterProvider);
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 16),
          FilledButton(
              onPressed: () =>
                  AutoRouter.of(context).push(const RegisterProjectRoute()),
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.add),
                  Text('新規登録'),
                ],
              )),
          const SizedBox(height: 16),
          Expanded(
            child: Wrap(
              children: [
                for (final project in projectList)
                  _projectCard(project, (project) {})
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _projectCard(Project project, void Function(Project project) onTap) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        onTap(project);
      },
      child: SizedBox(
        width: 150,
        height: 100,
        child: Card(
          child: Center(child: Text(project.name.value)),
        ),
      ),
    );
  }
}
