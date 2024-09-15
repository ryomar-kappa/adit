import 'package:adit/model/project/project.dart';
import 'package:adit/model/project/project_name.dart';
import 'package:adit/repository/project_repository.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class RegisterProjectView extends HookConsumerWidget {
  const RegisterProjectView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = useState<String?>(null);
    return Scaffold(
      body: Column(
        children: [
          Text('名前'),
          TextFormField(
            initialValue: state.value,
            onChanged: (value) => state.value = value,
          ),
          FilledButton(
              onPressed: () {
                ref.read(projectRepository).registerProject(
                    Project(name: ProjectName(value: state.value!)));
                AutoRouter.of(context).popUntilRoot();
              },
              child: Text('登録'))
        ],
      ),
    );
  }
}
