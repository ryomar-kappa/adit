import 'package:adit/main.dart';
import 'package:adit/model/member/member.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final serverMemberList = [ryoma, ryoma2];

final memberRepository =
    Provider<MemberRepository>((ref) => MemberRepository());

class MemberRepository {
  Future<List<Member>> fetchMembers() async {
    await Future.delayed(Duration(seconds: 1));
    return serverMemberList;
  }

  Future<void> registerMember(Member member) async {
    await Future.delayed(Duration(milliseconds: 500));
    serverMemberList.add(member);
  }
}
