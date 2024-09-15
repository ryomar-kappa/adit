import 'package:adit/model/project/project.dart';
import 'package:adit/model/project/project_name.dart';
import 'package:adit/provider/event_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final project1 = Project(name: ProjectName(value: 'Tiger'));
final project2 = Project(name: ProjectName(value: 'Bloom'));
final project3 = Project(name: ProjectName(value: 'その他'));

final serverProjectList = [project1, project2, project3];

final projectRepository =
    Provider<ProjectRepository>((ref) => ProjectRepository(ref: ref));

class ProjectRepository {
  final ProviderRef _ref;

  ProjectRepository({required ProviderRef ref}) : _ref = ref;
  Future<List<Project>> fetchProjectList() async {
    return serverProjectList;
  }

  Future<void> registerProject(Project project) async {
    serverProjectList.add(project);
    _ref.read(eventNotifierProvider.notifier).onRegisterProject();
  }
}
