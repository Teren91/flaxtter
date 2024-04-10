import 'package:flaxtter_client/flaxtter_client.dart';
import 'package:flaxtter_flutter/data/post_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'new_post_bloc.freezed.dart';

class NewPostBloc extends Bloc<NewPostEvent, NewPostState>{
  NewPostBloc(this.repo , super.initialState){
    on<NewPostEvent>(
      (event, emit) => event.map(
        save: (event) => _savePost(event, emit),
      ),
    );
  }

  final PostRepository repo;
  Future<void> _savePost(
    SaveNewPostEvent event, 
    Emitter<NewPostState> emit,) async{
      await repo.save(event.item);
  }
}



@Freezed()
class NewPostEvent with _$NewPostEvent {
  const factory NewPostEvent.save(Post item) = SaveNewPostEvent;
}

@Freezed()
class NewPostState with _$NewPostState {
  const factory NewPostState({
    required String body,
  }) = _NewPostState;
  const NewPostState._();

  factory NewPostState.initial() => const NewPostState(body: '');
}
