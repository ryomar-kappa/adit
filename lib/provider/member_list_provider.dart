import 'package:adit/model/member/member.dart';
import 'package:adit/repository/member_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final memberMasterProvider =
    NotifierProvider<MemberMasterProvider, List<Member>>(
        MemberMasterProvider.new);

class MemberMasterProvider extends Notifier<List<Member>> {
  @override
  List<Member> build() {
    _registerListener();
    return [];
  }

  Future<void> _registerListener() async {
    final members = await ref.read(memberRepository).fetchMembers();
    state = members;
  }
}
