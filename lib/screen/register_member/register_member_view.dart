import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class RegisterMemberView extends StatelessWidget {
  const RegisterMemberView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('HRID'),
          TextFormField(),
          Text('名前'),
          TextFormField(),
          Text('入社年度'),
          TextFormField(),
          Text('自覚'),
          TextFormField(),
          Text('マインド'),
          TextFormField(),
          FilledButton(onPressed: () {}, child: Text('登録'))
        ],
      ),
    );
  }
}
