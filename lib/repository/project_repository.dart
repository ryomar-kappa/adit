import 'package:adit/model/project/project.dart';
import 'package:adit/model/project/project_name.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final project1 = Project(name: ProjectName(value: 'Tiger'));
final project2 = Project(name: ProjectName(value: 'Bloom'));
final project3 = Project(name: ProjectName(value: 'その他'));

final serverProjectList = [project1, project2, project3];

final projectRepository =
    Provider<ProjectRepository>((ref) => ProjectRepository());

class ProjectRepository {
  Future<List<Project>> fetchProjectList() async {
    await Future.delayed(Duration(seconds: 1));
    return serverProjectList;
  }

  Future<void> registerProject(Project project) async {
    await Future.delayed(Duration(milliseconds: 500));
    serverProjectList.add(project);
  }
}
