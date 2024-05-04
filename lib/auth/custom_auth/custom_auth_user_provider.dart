import 'package:rxdart/rxdart.dart';

import '/backend/schema/structs/index.dart';
import 'custom_auth_manager.dart';

class OmniaNexusAuthUser {
  OmniaNexusAuthUser({
    required this.loggedIn,
    this.uid,
    this.userData,
  });

  bool loggedIn;
  String? uid;
  UsersStruct? userData;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<OmniaNexusAuthUser> omniaNexusAuthUserSubject =
    BehaviorSubject.seeded(OmniaNexusAuthUser(loggedIn: false));
Stream<OmniaNexusAuthUser> omniaNexusAuthUserStream() =>
    omniaNexusAuthUserSubject
        .asBroadcastStream()
        .map((user) => currentUser = user);
