import 'package:adit/model/project/project.dart';
import 'package:adit/screen/_common/async_value_widget.dart';
import 'package:adit/screen/project_list/project_list_presenter.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class ProjectListView extends ConsumerWidget {
  const ProjectListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.watch(projectListProvider);
    return Scaffold(
        body: AsyncValueWidget(
      value: viewModel,
      buildData: (viewModel) => Column(
        children: [
          for (final project in viewModel.projectList) _projectRow(project)
        ],
      ),
    ));
  }

  Widget _projectRow(Project project) {
    return Container(
      decoration: BoxDecoration(border: Border.all(color: Colors.black)),
      child: Row(
        children: [Text(project.name.value)],
      ),
    );
  }
}
