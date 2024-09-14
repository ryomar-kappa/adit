import 'package:adit/model/member/awareness_lebes.dart';
import 'package:adit/model/member/bn.dart';
import 'package:adit/model/member/hrid.dart';
import 'package:adit/model/member/member_name.dart';
import 'package:adit/model/member/mind_lebel.dart';

class Member {
  final MemberName name;
  final BN bn;
  final AwarenessLebel awarenessLebel;
  final MindLebel mind;
  final HRID id;

  Member(
      {required this.name,
      required this.bn,
      required this.awarenessLebel,
      required this.mind,
      required this.id});
}
