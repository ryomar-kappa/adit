import 'package:adit/screen/register_member/register_member_presenter.dart';
import 'package:adit/screen/register_member/register_member_view_model.dart';
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
      appBar: AppBar(
        title: const Text('メンバー登録'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16),
        child: Column(
          children: [
            _inputHRID(viewModel, presenter),
            _inputName(viewModel, presenter),
            _inputYearOfJoined(viewModel, presenter),
            _inputAwareness(viewModel, presenter),
            _inputMind(viewModel, presenter),
            FilledButton(
                onPressed: () {
                  presenter.onRegister();
                  AutoRouter.of(context).popUntilRoot();
                },
                child: const Text('登録'))
          ],
        ),
      ),
    );
  }

  Widget _inputHRID(
      RegisterMemberViewModel viewModel, RegisterMemberPresenter presenter) {
    return Row(
      children: [
        const Expanded(flex: 1, child: Text('HRID')),
        Expanded(
          flex: 4,
          child: TextFormField(
            initialValue: viewModel.hrid,
            onChanged: presenter.onChangeHrid,
          ),
        ),
      ],
    );
  }

  Widget _inputName(
      RegisterMemberViewModel viewModel, RegisterMemberPresenter presenter) {
    return Row(
      children: [
        const Expanded(flex: 1, child: Text('名前')),
        Expanded(
          flex: 4,
          child: TextFormField(
            initialValue: viewModel.name,
            onChanged: presenter.onChangeName,
          ),
        ),
      ],
    );
  }

  Widget _inputYearOfJoined(
      RegisterMemberViewModel viewModel, RegisterMemberPresenter presenter) {
    return Row(
      children: [
        const Expanded(flex: 1, child: Text('入社年度')),
        Expanded(
          flex: 4,
          child: TextFormField(
            initialValue: viewModel.yearOfJoined,
            onChanged: presenter.onChangeYearOfJoined,
          ),
        ),
      ],
    );
  }

  Widget _inputAwareness(
      RegisterMemberViewModel viewModel, RegisterMemberPresenter presenter) {
    return Row(
      children: [
        const Expanded(flex: 1, child: Text('自覚')),
        Expanded(
          flex: 4,
          child: TextFormField(
            initialValue: viewModel.awareness,
            onChanged: presenter.onChangeAwareness,
          ),
        ),
      ],
    );
  }

  Widget _inputMind(
      RegisterMemberViewModel viewModel, RegisterMemberPresenter presenter) {
    return Row(
      children: [
        const Expanded(flex: 1, child: Text('マインド')),
        Expanded(
          flex: 4,
          child: TextFormField(
            initialValue: viewModel.mind,
            onChanged: presenter.onChangeMind,
          ),
        ),
      ],
    );
  }
}
