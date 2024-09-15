// 保存時の自動整形でfoundationが消えないように警告を消している
// ignore: unused_import, directives_ordering
import 'package:adit/model/project/project_name.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_charge_view_model.freezed.dart';

@freezed
class RegisterChargeViewModel with _$RegisterChargeViewModel {
  const factory RegisterChargeViewModel({
    required ProjectName? projectName,
    required int? month,
    required String? amount,
  }) = _RegisterChargeViewModel;
}
