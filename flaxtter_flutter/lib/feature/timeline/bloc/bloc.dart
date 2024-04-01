import 'package:flaxtter_client/flaxtter_client.dart';
import 'package:flaxtter_flutter/data/post_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bloc.freezed.dart';

class TimelineError{}

class TimelineBloc extends Bloc<TimelineEvent, TimelineState>
{
  TimelineBloc(this.repo, super.initialState){
    on<TimelineEvent>((TimelineEvent e, emit) => e.map(
      save: (SavePostEvent e) => savePost(e, emit),
    ),);
  }

  final PostRepository repo;

  Future<void> savePost(SavePostEvent event, Emitter emit) async{
    await repo.save(PostWrapper(event.post));
  }

  // Future<void> loadPosts(LoadPostsEvent event, Emitter emit) async{
  //   final posts = await repo.list();
  //   emit(
  //     state.copyWith(
  //       posts: posts, 
  //       error: null,
  //     ),
  //   );
  // }
}

@Freezed()
class TimelineEvent with _$TimelineEvent{
  const factory TimelineEvent.save(Post post) = SavePostEvent;
}

@Freezed()
class TimelineState with _$TimelineState{
  const factory TimelineState({
    required List<Post> posts,
    TimelineError? error,
  }) = _TimelineState;
}
