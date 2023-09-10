import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:grocery_store/features/posts/models/post_data_ui_model.dart';
import 'package:grocery_store/features/posts/repo/posts_repo.dart';

part 'posts_event.dart';
part 'posts_state.dart';

class PostsBloc extends Bloc<PostsEvent, PostsState> {
  PostsBloc() : super(PostsInitial()) {
    on<PostInitialFetchEvent>(postInitialFetchEvent);
  }

  FutureOr<void> postInitialFetchEvent(
      PostInitialFetchEvent event, Emitter<PostsState> emit) async {
    emit(PostsFetchLoadingState());

    List<PostDataUiModel> posts = await PostsRepo.fetchPosts();
    emit(PostsFetchSuccessfullState(posts: posts));
  }
}
