import 'package:adit/model/member/awareness_lebes.dart';
import 'package:adit/model/member/bn.dart';
import 'package:adit/model/member/hrid.dart';
import 'package:adit/model/member/member.dart';
import 'package:adit/model/member/member_name.dart';
import 'package:adit/model/member/mind_lebel.dart';
import 'package:adit/repository/member_repository.dart';
import 'package:adit/screen/register_member/register_member_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final registerMemberPresenter = NotifierProvider.autoDispose<
    RegisterMemberPresenter,
    RegisterMemberViewModel>(RegisterMemberPresenter.new);

class RegisterMemberPresenter
    extends AutoDisposeNotifier<RegisterMemberViewModel> {
  @override
  RegisterMemberViewModel build() {
    return const RegisterMemberViewModel(
        hrid: null,
        name: null,
        yearOfJoined: null,
        awareness: null,
        mind: null);
  }

  void onChangeHrid(String value) {
    state = state.copyWith(hrid: value);
  }

  void onChangeName(String value) {
    state = state.copyWith(name: value);
  }

  void onChangeYearOfJoined(String value) {
    state = state.copyWith(yearOfJoined: value);
  }

  void onChangeAwareness(String value) {
    state = state.copyWith(awareness: value);
  }

  void onChangeMind(String value) {
    state = state.copyWith(mind: value);
  }

  void onRegister() {
    final member = Member(
        name: MemberName(fullName: state.name!),
        bn: BN(yearOfJoined: int.parse(state.yearOfJoined!)),
        awarenessLebel: AwarenessLebel(lebel: int.parse(state.awareness!)),
        mind: MindLebel(lebel: int.parse(state.mind!)),
        id: HRID(hrid: state.hrid!));

    ref.read(memberRepository).registerMember(member);
  }
}
