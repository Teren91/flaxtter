import 'package:flaxtter_client/flaxtter_client.dart';
import 'package:flutter/material.dart';

class PostView extends StatelessWidget {
  const PostView({required this.post, super.key});

  final Post post;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(post.body),
      subtitle: Text(post.createdAt.toIso8601String()),
    );
  }
}
