import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class MapWCFirebaseUser {
  MapWCFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

MapWCFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<MapWCFirebaseUser> mapWCFirebaseUserStream() => FirebaseAuth.instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<MapWCFirebaseUser>((user) => currentUser = MapWCFirebaseUser(user));
