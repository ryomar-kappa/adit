import 'package:adit/model/event/event_type.dart';
import 'package:adit/model/member/member.dart';
import 'package:adit/provider/event_notifier.dart';
import 'package:adit/repository/member_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final memberMasterProvider =
    NotifierProvider<MemberMasterProvider, List<Member>>(
        MemberMasterProvider.new);

class MemberMasterProvider extends Notifier<List<Member>> {
  @override
  List<Member> build() {
    _fetch();
    _registerListener();
    return [];
  }

  Future<void> _registerListener() async {
    ref.listen(eventNotifierProvider, (_, next) {
      if (next == EventType.registerMember) {
        _fetch();
      }
    });
  }

  Future<void> _fetch() async {
    final members = await ref.read(memberRepository).fetchMembers();
    state = members;
  }
}
