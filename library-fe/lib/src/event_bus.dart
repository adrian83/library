import 'dart:async';


class EventBus {

    final StreamController<bool> _onLoginEvent = StreamController<bool>();
    Stream<bool> onLoginStream = null;

    static final EventBus _singleton = EventBus._internal(); 

    factory EventBus() {
      return _singleton;
    }

    EventBus._internal() {
      onLoginStream = _onLoginEvent.stream.asBroadcastStream();
    }

    onEvent(bool signedIn) {
      _onLoginEvent.add(signedIn);
    }
}