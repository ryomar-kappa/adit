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
        _inputMember(viewModel, presenter,
            memberMaster: ref.watch(memberMasterProvider)),
        _inputProjectForm(viewModel, presenter,
            projectNameMaster:
                ref.watch(projectMasterProvider).map((e) => e.name).toList()),
        _inputMonthForm(viewModel, presenter),
        _inputAmount(viewModel, presenter),
      ],
    );
  }

  Widget _inputMember(
      RegisterChargeViewModel viewModel, RegisterChargePresenter presenter,
      {required List<Member> memberMaster}) {
    return Row(
      children: [
        const Expanded(flex: 1, child: Text('メンバー')),
        Flexible(
          flex: 4,
          child: DropdownButton<Member>(
            value: viewModel.member,
            items: memberMaster
                .map((member) => DropdownMenuItem(
                    value: member, child: Text(member.name.fullName)))
                .toList(),
            onChanged: (member) {
              presenter.onChangeMember(member);
            },
          ),
        ),
      ],
    );
  }

  Widget _inputProjectForm(
      RegisterChargeViewModel viewModel, RegisterChargePresenter presenter,
      {required List<ProjectName> projectNameMaster}) {
    return Row(
      children: [
        const Expanded(flex: 1, child: Text('プロジェクト')),
        Flexible(
          flex: 4,
          child: DropdownButton<ProjectName>(
            value: viewModel.projectName,
            items: projectNameMaster
                .map((projectName) => DropdownMenuItem(
                    value: projectName, child: Text(projectName.value)))
                .toList(),
            onChanged: (projectName) {
              presenter.onChangeProjectname(projectName);
            },
          ),
        ),
      ],
    );
  }

  Widget _inputMonthForm(
      RegisterChargeViewModel viewModel, RegisterChargePresenter presenter) {
    return Row(
      children: [
        const Expanded(flex: 1, child: Text('月')),
        Flexible(
          flex: 4,
          child: DropdownButton<int>(
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
            },
          ),
        ),
      ],
    );
  }

  Widget _inputAmount(
      RegisterChargeViewModel viewModel, RegisterChargePresenter presenter) {
    return Row(
      children: [
        const Expanded(flex: 1, child: Text('工数')),
        Expanded(
          flex: 4,
          child: TextFormField(
            initialValue: viewModel.amount,
            onChanged: presenter.onChangeAmount,
          ),
        ),
      ],
    );
  }
}
