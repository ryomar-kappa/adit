// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'member_detail_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MemberDetailViewModel {
  Member get member => throw _privateConstructorUsedError;
  List<MembersChargeByMonth> get membersChargeList =>
      throw _privateConstructorUsedError;

  /// Create a copy of MemberDetailViewModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MemberDetailViewModelCopyWith<MemberDetailViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberDetailViewModelCopyWith<$Res> {
  factory $MemberDetailViewModelCopyWith(MemberDetailViewModel value,
          $Res Function(MemberDetailViewModel) then) =
      _$MemberDetailViewModelCopyWithImpl<$Res, MemberDetailViewModel>;
  @useResult
  $Res call({Member member, List<MembersChargeByMonth> membersChargeList});
}

/// @nodoc
class _$MemberDetailViewModelCopyWithImpl<$Res,
        $Val extends MemberDetailViewModel>
    implements $MemberDetailViewModelCopyWith<$Res> {
  _$MemberDetailViewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MemberDetailViewModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? member = null,
    Object? membersChargeList = null,
  }) {
    return _then(_value.copyWith(
      member: null == member
          ? _value.member
          : member // ignore: cast_nullable_to_non_nullable
              as Member,
      membersChargeList: null == membersChargeList
          ? _value.membersChargeList
          : membersChargeList // ignore: cast_nullable_to_non_nullable
              as List<MembersChargeByMonth>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MemberDetailViewModelImplCopyWith<$Res>
    implements $MemberDetailViewModelCopyWith<$Res> {
  factory _$$MemberDetailViewModelImplCopyWith(
          _$MemberDetailViewModelImpl value,
          $Res Function(_$MemberDetailViewModelImpl) then) =
      __$$MemberDetailViewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Member member, List<MembersChargeByMonth> membersChargeList});
}

/// @nodoc
class __$$MemberDetailViewModelImplCopyWithImpl<$Res>
    extends _$MemberDetailViewModelCopyWithImpl<$Res,
        _$MemberDetailViewModelImpl>
    implements _$$MemberDetailViewModelImplCopyWith<$Res> {
  __$$MemberDetailViewModelImplCopyWithImpl(_$MemberDetailViewModelImpl _value,
      $Res Function(_$MemberDetailViewModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MemberDetailViewModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? member = null,
    Object? membersChargeList = null,
  }) {
    return _then(_$MemberDetailViewModelImpl(
      member: null == member
          ? _value.member
          : member // ignore: cast_nullable_to_non_nullable
              as Member,
      membersChargeList: null == membersChargeList
          ? _value._membersChargeList
          : membersChargeList // ignore: cast_nullable_to_non_nullable
              as List<MembersChargeByMonth>,
    ));
  }
}

/// @nodoc

class _$MemberDetailViewModelImpl extends _MemberDetailViewModel {
  const _$MemberDetailViewModelImpl(
      {required this.member,
      required final List<MembersChargeByMonth> membersChargeList})
      : _membersChargeList = membersChargeList,
        super._();

  @override
  final Member member;
  final List<MembersChargeByMonth> _membersChargeList;
  @override
  List<MembersChargeByMonth> get membersChargeList {
    if (_membersChargeList is EqualUnmodifiableListView)
      return _membersChargeList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_membersChargeList);
  }

  @override
  String toString() {
    return 'MemberDetailViewModel(member: $member, membersChargeList: $membersChargeList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemberDetailViewModelImpl &&
            (identical(other.member, member) || other.member == member) &&
            const DeepCollectionEquality()
                .equals(other._membersChargeList, _membersChargeList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, member,
      const DeepCollectionEquality().hash(_membersChargeList));

  /// Create a copy of MemberDetailViewModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MemberDetailViewModelImplCopyWith<_$MemberDetailViewModelImpl>
      get copyWith => __$$MemberDetailViewModelImplCopyWithImpl<
          _$MemberDetailViewModelImpl>(this, _$identity);
}

abstract class _MemberDetailViewModel extends MemberDetailViewModel {
  const factory _MemberDetailViewModel(
          {required final Member member,
          required final List<MembersChargeByMonth> membersChargeList}) =
      _$MemberDetailViewModelImpl;
  const _MemberDetailViewModel._() : super._();

  @override
  Member get member;
  @override
  List<MembersChargeByMonth> get membersChargeList;

  /// Create a copy of MemberDetailViewModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MemberDetailViewModelImplCopyWith<_$MemberDetailViewModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
