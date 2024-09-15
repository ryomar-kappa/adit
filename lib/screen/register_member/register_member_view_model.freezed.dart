// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_member_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RegisterMemberViewModel {
  String get hrid => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get yearOfJoined => throw _privateConstructorUsedError;
  String get awareness => throw _privateConstructorUsedError;
  String get mind => throw _privateConstructorUsedError;

  /// Create a copy of RegisterMemberViewModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegisterMemberViewModelCopyWith<RegisterMemberViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterMemberViewModelCopyWith<$Res> {
  factory $RegisterMemberViewModelCopyWith(RegisterMemberViewModel value,
          $Res Function(RegisterMemberViewModel) then) =
      _$RegisterMemberViewModelCopyWithImpl<$Res, RegisterMemberViewModel>;
  @useResult
  $Res call(
      {String hrid,
      String name,
      String yearOfJoined,
      String awareness,
      String mind});
}

/// @nodoc
class _$RegisterMemberViewModelCopyWithImpl<$Res,
        $Val extends RegisterMemberViewModel>
    implements $RegisterMemberViewModelCopyWith<$Res> {
  _$RegisterMemberViewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegisterMemberViewModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hrid = null,
    Object? name = null,
    Object? yearOfJoined = null,
    Object? awareness = null,
    Object? mind = null,
  }) {
    return _then(_value.copyWith(
      hrid: null == hrid
          ? _value.hrid
          : hrid // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      yearOfJoined: null == yearOfJoined
          ? _value.yearOfJoined
          : yearOfJoined // ignore: cast_nullable_to_non_nullable
              as String,
      awareness: null == awareness
          ? _value.awareness
          : awareness // ignore: cast_nullable_to_non_nullable
              as String,
      mind: null == mind
          ? _value.mind
          : mind // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisterMemberViewModelImplCopyWith<$Res>
    implements $RegisterMemberViewModelCopyWith<$Res> {
  factory _$$RegisterMemberViewModelImplCopyWith(
          _$RegisterMemberViewModelImpl value,
          $Res Function(_$RegisterMemberViewModelImpl) then) =
      __$$RegisterMemberViewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String hrid,
      String name,
      String yearOfJoined,
      String awareness,
      String mind});
}

/// @nodoc
class __$$RegisterMemberViewModelImplCopyWithImpl<$Res>
    extends _$RegisterMemberViewModelCopyWithImpl<$Res,
        _$RegisterMemberViewModelImpl>
    implements _$$RegisterMemberViewModelImplCopyWith<$Res> {
  __$$RegisterMemberViewModelImplCopyWithImpl(
      _$RegisterMemberViewModelImpl _value,
      $Res Function(_$RegisterMemberViewModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterMemberViewModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hrid = null,
    Object? name = null,
    Object? yearOfJoined = null,
    Object? awareness = null,
    Object? mind = null,
  }) {
    return _then(_$RegisterMemberViewModelImpl(
      hrid: null == hrid
          ? _value.hrid
          : hrid // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      yearOfJoined: null == yearOfJoined
          ? _value.yearOfJoined
          : yearOfJoined // ignore: cast_nullable_to_non_nullable
              as String,
      awareness: null == awareness
          ? _value.awareness
          : awareness // ignore: cast_nullable_to_non_nullable
              as String,
      mind: null == mind
          ? _value.mind
          : mind // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RegisterMemberViewModelImpl
    with DiagnosticableTreeMixin
    implements _RegisterMemberViewModel {
  const _$RegisterMemberViewModelImpl(
      {required this.hrid,
      required this.name,
      required this.yearOfJoined,
      required this.awareness,
      required this.mind});

  @override
  final String hrid;
  @override
  final String name;
  @override
  final String yearOfJoined;
  @override
  final String awareness;
  @override
  final String mind;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegisterMemberViewModel(hrid: $hrid, name: $name, yearOfJoined: $yearOfJoined, awareness: $awareness, mind: $mind)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RegisterMemberViewModel'))
      ..add(DiagnosticsProperty('hrid', hrid))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('yearOfJoined', yearOfJoined))
      ..add(DiagnosticsProperty('awareness', awareness))
      ..add(DiagnosticsProperty('mind', mind));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterMemberViewModelImpl &&
            (identical(other.hrid, hrid) || other.hrid == hrid) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.yearOfJoined, yearOfJoined) ||
                other.yearOfJoined == yearOfJoined) &&
            (identical(other.awareness, awareness) ||
                other.awareness == awareness) &&
            (identical(other.mind, mind) || other.mind == mind));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, hrid, name, yearOfJoined, awareness, mind);

  /// Create a copy of RegisterMemberViewModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterMemberViewModelImplCopyWith<_$RegisterMemberViewModelImpl>
      get copyWith => __$$RegisterMemberViewModelImplCopyWithImpl<
          _$RegisterMemberViewModelImpl>(this, _$identity);
}

abstract class _RegisterMemberViewModel implements RegisterMemberViewModel {
  const factory _RegisterMemberViewModel(
      {required final String hrid,
      required final String name,
      required final String yearOfJoined,
      required final String awareness,
      required final String mind}) = _$RegisterMemberViewModelImpl;

  @override
  String get hrid;
  @override
  String get name;
  @override
  String get yearOfJoined;
  @override
  String get awareness;
  @override
  String get mind;

  /// Create a copy of RegisterMemberViewModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegisterMemberViewModelImplCopyWith<_$RegisterMemberViewModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
