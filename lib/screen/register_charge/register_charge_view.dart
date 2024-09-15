import 'package:adit/model/project/project_name.dart';
import 'package:adit/screen/register_charge/register_charge_presenter.dart';
import 'package:adit/screen/register_charge/register_charge_view_model.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class RegisterChargeView extends ConsumerWidget {
  const RegisterChargeView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.watch(registerChargePresenter);
    final presenter = ref.watch(registerChargePresenter.notifier);
    return Scaffold(
      body: Column(
        children: [
          _inputForm(viewModel, presenter),
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

  Widget _inputForm(
      RegisterChargeViewModel viewModel, RegisterChargePresenter presenter) {
    return Column(
      children: [
        DropdownButton(
            value: viewModel.projectName,
            items: [
              DropdownMenuItem<ProjectName>(
                value: ProjectName(value: 'Tiger'),
                child: const Text('Tiger'),
              ),
              DropdownMenuItem<ProjectName>(
                value: ProjectName(value: 'Bloom'),
                child: const Text('Bloom'),
              )
            ],
            onChanged: (projectName) {
              presenter.onChangeProjectname(projectName);
            }),
        TextFormField(
          initialValue: viewModel.amount,
          onChanged: presenter.onChangeAmount,
        ),
      ],
    );
  }
}
