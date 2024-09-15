import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_member_view_model.freezed.dart';

@freezed
class RegisterMemberViewModel with _$RegisterMemberViewModel {
  const factory RegisterMemberViewModel({
    required String hrid,
    required String name,
    required String yearOfJoined,
    required String awareness,
    required String mind,
  }) = _RegisterMemberViewModel;
}
