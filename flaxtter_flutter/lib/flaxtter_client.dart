
import 'package:flaxtter_client/flaxtter_client.dart';
import 'package:injectable/injectable.dart';
import 'package:serverpod_auth_shared_flutter/serverpod_auth_shared_flutter.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';


@module
abstract class FlaxtterClientModule{

  @lazySingleton
  Client get client => Client('http://$localhost:8080/',
    authenticationKeyManager: FlutterAuthenticationKeyManager(),
    )..connectivityMonitor = FlutterConnectivityMonitor();
  
  // The session manager keeps track of the signed-in state of the user. You
  // can query it to see if the user is currently signed in and get information
  // about the user.
  
  @lazySingleton
  SessionManager get sessionManager {
    return  SessionManager(
      caller: client.modules.auth,
    );
  
  }
}
