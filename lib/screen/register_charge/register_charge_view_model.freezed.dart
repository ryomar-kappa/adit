// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_charge_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RegisterChargeViewModel {
  ProjectName? get projectName => throw _privateConstructorUsedError;
  int? get month => throw _privateConstructorUsedError;
  String? get amount => throw _privateConstructorUsedError;
  Member? get member => throw _privateConstructorUsedError;

  /// Create a copy of RegisterChargeViewModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegisterChargeViewModelCopyWith<RegisterChargeViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterChargeViewModelCopyWith<$Res> {
  factory $RegisterChargeViewModelCopyWith(RegisterChargeViewModel value,
          $Res Function(RegisterChargeViewModel) then) =
      _$RegisterChargeViewModelCopyWithImpl<$Res, RegisterChargeViewModel>;
  @useResult
  $Res call(
      {ProjectName? projectName, int? month, String? amount, Member? member});
}

/// @nodoc
class _$RegisterChargeViewModelCopyWithImpl<$Res,
        $Val extends RegisterChargeViewModel>
    implements $RegisterChargeViewModelCopyWith<$Res> {
  _$RegisterChargeViewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegisterChargeViewModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectName = freezed,
    Object? month = freezed,
    Object? amount = freezed,
    Object? member = freezed,
  }) {
    return _then(_value.copyWith(
      projectName: freezed == projectName
          ? _value.projectName
          : projectName // ignore: cast_nullable_to_non_nullable
              as ProjectName?,
      month: freezed == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as int?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      member: freezed == member
          ? _value.member
          : member // ignore: cast_nullable_to_non_nullable
              as Member?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisterChargeViewModelImplCopyWith<$Res>
    implements $RegisterChargeViewModelCopyWith<$Res> {
  factory _$$RegisterChargeViewModelImplCopyWith(
          _$RegisterChargeViewModelImpl value,
          $Res Function(_$RegisterChargeViewModelImpl) then) =
      __$$RegisterChargeViewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ProjectName? projectName, int? month, String? amount, Member? member});
}

/// @nodoc
class __$$RegisterChargeViewModelImplCopyWithImpl<$Res>
    extends _$RegisterChargeViewModelCopyWithImpl<$Res,
        _$RegisterChargeViewModelImpl>
    implements _$$RegisterChargeViewModelImplCopyWith<$Res> {
  __$$RegisterChargeViewModelImplCopyWithImpl(
      _$RegisterChargeViewModelImpl _value,
      $Res Function(_$RegisterChargeViewModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterChargeViewModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectName = freezed,
    Object? month = freezed,
    Object? amount = freezed,
    Object? member = freezed,
  }) {
    return _then(_$RegisterChargeViewModelImpl(
      projectName: freezed == projectName
          ? _value.projectName
          : projectName // ignore: cast_nullable_to_non_nullable
              as ProjectName?,
      month: freezed == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as int?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      member: freezed == member
          ? _value.member
          : member // ignore: cast_nullable_to_non_nullable
              as Member?,
    ));
  }
}

/// @nodoc

class _$RegisterChargeViewModelImpl
    with DiagnosticableTreeMixin
    implements _RegisterChargeViewModel {
  const _$RegisterChargeViewModelImpl(
      {required this.projectName,
      required this.month,
      required this.amount,
      required this.member});

  @override
  final ProjectName? projectName;
  @override
  final int? month;
  @override
  final String? amount;
  @override
  final Member? member;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegisterChargeViewModel(projectName: $projectName, month: $month, amount: $amount, member: $member)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RegisterChargeViewModel'))
      ..add(DiagnosticsProperty('projectName', projectName))
      ..add(DiagnosticsProperty('month', month))
      ..add(DiagnosticsProperty('amount', amount))
      ..add(DiagnosticsProperty('member', member));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterChargeViewModelImpl &&
            (identical(other.projectName, projectName) ||
                other.projectName == projectName) &&
            (identical(other.month, month) || other.month == month) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.member, member) || other.member == member));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, projectName, month, amount, member);

  /// Create a copy of RegisterChargeViewModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterChargeViewModelImplCopyWith<_$RegisterChargeViewModelImpl>
      get copyWith => __$$RegisterChargeViewModelImplCopyWithImpl<
          _$RegisterChargeViewModelImpl>(this, _$identity);
}

abstract class _RegisterChargeViewModel implements RegisterChargeViewModel {
  const factory _RegisterChargeViewModel(
      {required final ProjectName? projectName,
      required final int? month,
      required final String? amount,
      required final Member? member}) = _$RegisterChargeViewModelImpl;

  @override
  ProjectName? get projectName;
  @override
  int? get month;
  @override
  String? get amount;
  @override
  Member? get member;

  /// Create a copy of RegisterChargeViewModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegisterChargeViewModelImplCopyWith<_$RegisterChargeViewModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
