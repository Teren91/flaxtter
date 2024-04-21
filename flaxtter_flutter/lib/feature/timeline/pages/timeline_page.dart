import 'package:flaxtter_flutter/data/data.dart';
import 'package:flaxtter_flutter/feature/timeline/bloc/timeline_bloc.dart';
import 'package:flaxtter_flutter/feature/timeline/pages/page.dart';
import 'package:flaxtter_flutter/feature/timeline/widgets/timeline_post_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class TimelinePage extends StatefulWidget {
  const TimelinePage({super.key});

  @override
  State<TimelinePage> createState() => _TimelinePageState();
}

class _TimelinePageState extends State<TimelinePage> {
  late final TimelineBloc bloc;

  @override
  void initState() {
    super.initState();

    bloc = TimelineBloc(
      GetIt.I<PostRepository>(),
      TimelineState.initial(),
    );

    bloc.add(const TimelineEvent.load());
  }

  Future<void> goToPostPage() async {
    await Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (context) => const NewPostPage(),
      ),
    );

    bloc.add(const TimelineEvent.load());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: bloc,
      builder: (context, TimelineState state){
      return Scaffold(
        body: ListView.builder(
          itemCount: state.posts.length,
          itemBuilder: (context, index) {
            return PostView(post: state.posts[index]);
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: goToPostPage,
          child: const Icon(Icons.post_add),
          ),
      );
      },
    );
  }
}
