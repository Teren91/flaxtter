import 'package:flaxtter_flutter/data/data.dart';
import 'package:flaxtter_flutter/feature/timeline/bloc/bloc.dart';
import 'package:flaxtter_flutter/feature/timeline/pages/page.dart';
import 'package:flutter/material.dart';
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
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.of(context)
        .push(MaterialPageRoute<void>(
          builder: (context) => const NewPostPage(),
        ),
        ),
        child: const Icon(Icons.post_add),
      ),
    );
  }
}
