import 'package:flaxtter_client/flaxtter_client.dart';
import 'package:flaxtter_flutter/data/data.dart';
import 'package:flaxtter_flutter/feature/timeline/bloc/new_post_bloc.dart';
import 'package:flaxtter_flutter/feature/timeline/timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class NewPostPage extends StatefulWidget {
  const NewPostPage({super.key});

  @override
  State<NewPostPage> createState() => _NewPostPageState();
}

class _NewPostPageState extends State<NewPostPage> {
  late final NewPostBloc bloc;

  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();

    bloc = NewPostBloc(
      GetIt.I<PostRepository>(),
      NewPostState.initial(),
    );
  }

  @override
  void dispose() {
    bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener(
      bloc: bloc,
      listener: (context, NewPostState state) {
        if (state.item?.id != null) {
          Navigator.of(context).pop();
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('New Post'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TextField(
                controller: _controller,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => bloc.add(
            SaveNewPostEvent(
              Post(
                author: 'me',
                body: _controller.text,
                // TODO(Teren91): It will be upgrade by postgress
                createdAt: DateTime.now(),
              ),
            ),
          ),
          child: const Icon(Icons.save),
        ),
      ),
    );
  }
}
