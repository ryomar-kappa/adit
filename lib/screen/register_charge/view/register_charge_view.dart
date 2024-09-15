import 'package:adit/model/project/project_name.dart';
import 'package:adit/screen/register_charge/register_charge_presenter.dart';
import 'package:adit/screen/register_charge/register_charge_view_model.dart';
import 'package:adit/screen/register_charge/view/input_view.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class RegisterChargeView extends ConsumerWidget {
  const RegisterChargeView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final presenter = ref.watch(registerChargePresenter.notifier);
    return Scaffold(
      body: Column(
        children: [
          const InputView(),
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

  Widget _inputMonthForm(
      RegisterChargeViewModel viewModel, RegisterChargePresenter presenter) {
    return DropdownButton(
        value: viewModel.month,
        items: const [
          DropdownMenuItem<int>(value: 1, child: Text('1月')),
          DropdownMenuItem<int>(value: 2, child: Text('2月')),
          DropdownMenuItem<int>(value: 3, child: Text('3月')),
          DropdownMenuItem<int>(value: 4, child: Text('4月')),
          DropdownMenuItem<int>(value: 5, child: Text('5月')),
          DropdownMenuItem<int>(value: 6, child: Text('6月')),
          DropdownMenuItem<int>(value: 7, child: Text('7月')),
          DropdownMenuItem<int>(value: 8, child: Text('8月')),
          DropdownMenuItem<int>(value: 9, child: Text('9月')),
          DropdownMenuItem<int>(value: 10, child: Text('10月')),
          DropdownMenuItem<int>(value: 11, child: Text('11月')),
          DropdownMenuItem<int>(value: 12, child: Text('12月')),
        ],
        onChanged: (month) {
          presenter.onChangeMonth(month);
        });
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
