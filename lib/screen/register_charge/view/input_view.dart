import 'package:adit/model/member/member.dart';
import 'package:adit/model/project/project_name.dart';
import 'package:adit/provider/member_master_provider.dart';
import 'package:adit/provider/project_master_provider.dart';
import 'package:adit/screen/register_charge/register_charge_presenter.dart';
import 'package:adit/screen/register_charge/register_charge_view_model.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class InputView extends ConsumerWidget {
  const InputView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final presenter = ref.watch(registerChargePresenter.notifier);
    final viewModel = ref.watch(registerChargePresenter);
    return Column(
      children: [
        Text('メンバー'),
        _inputMember(viewModel, presenter,
            memberMaster: ref.watch(memberMasterProvider)),
        Text('プロジェクト'),
        _inputProjectForm(viewModel, presenter,
            projectNameMaster:
                ref.watch(projectMasterProvider).map((e) => e.name).toList()),
        Text('月'),
        _inputMonthForm(viewModel, presenter),
        Text('工数'),
        _inputAmount(viewModel, presenter)
      ],
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

  Widget _inputProjectForm(
      RegisterChargeViewModel viewModel, RegisterChargePresenter presenter,
      {required List<ProjectName> projectNameMaster}) {
    return DropdownButton(
        value: viewModel.projectName,
        items: projectNameMaster
            .map((projectName) => DropdownMenuItem(
                value: projectName, child: Text(projectName.value)))
            .toList(),
        onChanged: (projectName) {
          presenter.onChangeProjectname(projectName);
        });
  }

  Widget _inputAmount(
      RegisterChargeViewModel viewModel, RegisterChargePresenter presenter) {
    return TextFormField(
      initialValue: viewModel.amount,
      onChanged: presenter.onChangeAmount,
    );
  }

  Widget _inputMember(
      RegisterChargeViewModel viewModel, RegisterChargePresenter presenter,
      {required List<Member> memberMaster}) {
    return DropdownButton(
        value: viewModel.member,
        items: memberMaster
            .map((member) => DropdownMenuItem(
                value: member, child: Text(member.name.fullName)))
            .toList(),
        onChanged: (member) {
          presenter.onChangeMember(member);
        });
  }
}
