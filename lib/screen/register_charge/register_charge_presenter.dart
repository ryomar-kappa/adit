import 'package:adit/model/charge/members_charge.dart';
import 'package:adit/model/charge/year_month.dart';
import 'package:adit/model/member/hrid.dart';
import 'package:adit/model/project/project_name.dart';
import 'package:adit/repository/charge_repository.dart';
import 'package:adit/screen/register_charge/register_charge_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final registerChargePresenter = NotifierProvider.autoDispose<
    RegisterChargePresenter,
    RegisterChargeViewModel>(RegisterChargePresenter.new);

class RegisterChargePresenter
    extends AutoDisposeNotifier<RegisterChargeViewModel> {
  @override
  RegisterChargeViewModel build() {
    return const RegisterChargeViewModel(
        projectName: null, month: null, amount: null);
  }

  void onChangeProjectname(ProjectName? projectName) {
    state = state.copyWith(projectName: projectName);
  }

  void onChangeAmount(String amount) {
    state = state.copyWith(amount: amount);
  }

  void onChangeMonth(int? month) {
    state = state.copyWith(month: month);
  }

  void onRegister() {
    final charge = MembersChargeByMonth.from(
        HRID(hrid: '101284'), YearMonth(year: 2024, month: state.month!), [
      CreateChargeCommand(
          projectName: state.projectName!.value,
          amount: int.parse(state.amount!))
    ]);

    ref.read(chargeRepository).registerCharge(charge);
  }
}
