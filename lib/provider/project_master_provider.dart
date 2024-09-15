import 'package:adit/model/event/event_type.dart';
import 'package:adit/model/project/project.dart';
import 'package:adit/provider/event_notifier.dart';
import 'package:adit/repository/project_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final projectMasterProvider =
    NotifierProvider<ProjectMasterProvider, List<Project>>(
        ProjectMasterProvider.new);

class ProjectMasterProvider extends Notifier<List<Project>> {
  @override
  List<Project> build() {
    _fetch();
    _registerListener();
    return [];
  }

  Future<void> _registerListener() async {
    ref.listen(eventNotifierProvider, (_, next) {
      if (next == EventType.registerProject) {
        _fetch();
      }
    });
  }

  Future<void> _fetch() async {
    final projectList = await ref.read(projectRepository).fetchProjectList();
    state = List.from(projectList);
  }
}
