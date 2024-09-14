import 'dart:async';

import 'package:adit/repository/member_repository.dart';
import 'package:adit/screen/member_list/member_list_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final memberListPresenter =
    AsyncNotifierProvider.autoDispose<MemberListPresenter, MemberListViewModel>(
        MemberListPresenter.new);

class MemberListPresenter
    extends AutoDisposeAsyncNotifier<MemberListViewModel> {
  @override
  Future<MemberListViewModel> build() async {
    final memberList = await MemberRepository().fetchMembers();
    return MemberListViewModel(memberList: memberList);
  }
}
