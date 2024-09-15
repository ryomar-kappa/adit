import 'package:adit/model/member/awareness_lebes.dart';
import 'package:adit/model/member/bn.dart';
import 'package:adit/model/member/hrid.dart';
import 'package:adit/model/member/member.dart';
import 'package:adit/model/member/member_name.dart';
import 'package:adit/model/member/mind_lebel.dart';
import 'package:adit/provider/event_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final ryoma = Member(
    name: MemberName(fullName: '高山龍馬'),
    bn: BN(yearOfJoined: 2023),
    awarenessLebel: AwarenessLebel(lebel: 1),
    mind: MindLebel(lebel: 1),
    id: HRID(hrid: '101284'));

final serverMemberList = [ryoma];

final memberRepository =
    Provider<MemberRepository>((ref) => MemberRepository(ref: ref));

class MemberRepository {
  final ProviderRef _ref;

  MemberRepository({required ProviderRef ref}) : _ref = ref;
  Future<List<Member>> fetchMembers() async {
    await Future.delayed(Duration(seconds: 1));
    return serverMemberList;
  }

  Future<void> registerMember(Member member) async {
    await Future.delayed(Duration(milliseconds: 500));
    serverMemberList.add(member);
    _ref.read(eventNotifierProvider.notifier).onRegisterMember();
  }
}
