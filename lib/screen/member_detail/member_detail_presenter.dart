import 'dart:async';

import 'package:adit/model/member/member.dart';
import 'package:adit/repository/charge_repository.dart';
import 'package:adit/screen/member_detail/member_detail_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final memberDetailPresenter = AsyncNotifierProvider.autoDispose
    .family<MemberDetailPresenter, MemberDetailViewModel, Member>(
        MemberDetailPresenter.new);

class MemberDetailPresenter
    extends AutoDisposeFamilyAsyncNotifier<MemberDetailViewModel, Member> {
  @override
  Future<MemberDetailViewModel> build(Member arg) async {
    final membersCharge =
        await ref.read(chargeRepository).fetchChargeByHrid(arg.id);
    return MemberDetailViewModel(member: arg, membersChargeList: membersCharge);
  }
}
