import 'package:rxdart/rxdart.dart';

import 'custom_auth_manager.dart';

class TurnosAuthUser {
  TurnosAuthUser({required this.loggedIn, this.uid});

  bool loggedIn;
  String? uid;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<TurnosAuthUser> turnosAuthUserSubject =
    BehaviorSubject.seeded(TurnosAuthUser(loggedIn: false));
Stream<TurnosAuthUser> turnosAuthUserStream() =>
    turnosAuthUserSubject.asBroadcastStream().map((user) => currentUser = user);
