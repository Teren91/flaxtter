
import 'package:flaxtter_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class PostEndpoint extends Endpoint
{
  Future<Post> save(Session session, Post item) async {
    throw Exception();
  }
}