import 'package:adit/model/event/event_type.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final eventNotifierProvider =
    NotifierProvider<EventNotifier, EventType?>(EventNotifier.new);

class EventNotifier extends Notifier<EventType?> {
  @override
  EventType? build() {
    return null;
  }

  @override
  bool updateShouldNotify(previous, next) {
    return true;
  }

  void onRegisterMember() {
    state = EventType.registerMember;
  }

  void onRegisterProject() {
    print('koko');
    state = EventType.registerProject;
  }
}
