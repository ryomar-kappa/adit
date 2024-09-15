import 'dart:async';

import 'package:adit/model/project.dart';
import 'package:adit/screen/project_list.dart/project_list_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final projectListProvider = AsyncNotifierProvider.autoDispose<
    ProjectListPresenter, ProjectListViewModel>(ProjectListPresenter.new);

class ProjectListPresenter
    extends AutoDisposeAsyncNotifier<ProjectListViewModel> {
  @override
  Future<ProjectListViewModel> build() async {
    final project1 = Project(name: 'Tiger');
    final project2 = Project(name: 'Bloom');
    final project3 = Project(name: 'その他');

    return ProjectListViewModel(projectList: [project1, project2, project3]);
  }
}
