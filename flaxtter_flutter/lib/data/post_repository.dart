
import 'package:flaxtter_client/flaxtter_client.dart';
import 'package:flaxtter_flutter/data/data.dart';
import 'package:injectable/injectable.dart';

class PostBindings extends ModelBindings<Post>
{
  const PostBindings();

  @override
  int? getId(Post obj) => obj.id;

  @override
  Map<String, Object?> toJson(Post obj) => obj.toJson();

  @override
  Post fromJson(Map<String, Object?> json) => Post.fromJson(json, Protocol());
  
  @override
  int sortDesc(Post a, Post b) => b.createdAt.compareTo(a.createdAt);
}

@Singleton()
class PostRepository extends Repository<Post>
{
  PostRepository(this.client) : super(
     bindings: const PostBindings(),
    );

  final Client client;

  @override
  Future<Post> persist(Post item) async {
    return client.post.save(item);
  }
  
  @override
  Future<List<Post>> load() {
    return client.post.list();
  }
  
}
