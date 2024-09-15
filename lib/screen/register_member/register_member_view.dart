import 'package:adit/screen/register_member/register_member_presenter.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class RegisterMemberView extends ConsumerWidget {
  const RegisterMemberView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final presenter = ref.watch(registerMemberPresenter.notifier);
    final viewModel = ref.watch(registerMemberPresenter);
    return Scaffold(
      body: Column(
        children: [
          Text('HRID'),
          TextFormField(
            initialValue: viewModel.hrid,
            onChanged: (value) => presenter.onChangeHrid(value),
          ),
          Text('名前'),
          TextFormField(
            initialValue: viewModel.name,
            onChanged: presenter.onChangeName,
          ),
          Text('入社年度'),
          TextFormField(
            initialValue: viewModel.yearOfJoined,
            onChanged: presenter.onChangeYearOfJoined,
          ),
          Text('自覚'),
          TextFormField(
            initialValue: viewModel.awareness,
            onChanged: presenter.onChangeAwareness,
          ),
          Text('マインド'),
          TextFormField(
            initialValue: viewModel.mind,
            onChanged: presenter.onChangeMind,
          ),
          FilledButton(
              onPressed: () {
                presenter.onRegister();
                AutoRouter.of(context).popUntilRoot();
              },
              child: Text('登録'))
        ],
      ),
    );
  }
}
