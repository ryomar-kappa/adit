import 'package:adit/main.dart';
import 'package:adit/model/member/member.dart';

class MemberRepository {
  Future<List<Member>> fetchMembers() async {
    await Future.delayed(Duration(seconds: 1));
    return <Member>[ryoma, ryoma2];
  }
}
