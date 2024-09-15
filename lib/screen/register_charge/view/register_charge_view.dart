import 'package:adit/screen/register_charge/register_charge_presenter.dart';
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
}
