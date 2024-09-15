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
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () =>
              AutoRouter.of(context).push(const RegisterProjectRoute())),
      body: Wrap(
        children: [
          for (final project in projectList) _projectCard(project, (project) {})
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

  Widget _projectRow(Project project) {
    return Container(
      decoration: BoxDecoration(border: Border.all(color: Colors.black)),
      child: Text(project.name.value),
    );
  }
}
