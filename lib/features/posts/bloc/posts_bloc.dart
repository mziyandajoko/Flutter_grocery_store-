import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'posts_event.dart';
part 'posts_state.dart';

class PostsBloc extends Bloc<PostsEvent, PostsState> {
  PostsBloc() : super(PostsInitial()) {
    on<PostInitialEvent>(postInitialEvent);
  }

  FutureOr<void> postInitialEvent(
      PostInitialEvent event, Emitter<PostsState> emit) {}
}
