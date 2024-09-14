import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AsyncValueWidget<T> extends HookConsumerWidget {
  final AsyncValue<T> value;
  final Widget Function(T data) buildData;

  const AsyncValueWidget(
      {super.key, required this.value, required this.buildData});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return value.when(
        data: (data) => buildData(data),
        error: (_, __) => Text('エラーです'),
        loading: () => Center(child: Text('ロード中')));
  }
}
