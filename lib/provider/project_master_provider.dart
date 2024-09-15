import 'package:adit/model/project/project.dart';
import 'package:adit/repository/project_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final projectMasterProvider =
    NotifierProvider<ProjectMasterProvider, List<Project>>(
        ProjectMasterProvider.new);

class ProjectMasterProvider extends Notifier<List<Project>> {
  @override
  List<Project> build() {
    _registerListener();
    return [];
  }

  Future<void> _registerListener() async {
    final projectList = await ref.read(projectRepository).fetchProjectList();
    state = projectList;
  }
}
