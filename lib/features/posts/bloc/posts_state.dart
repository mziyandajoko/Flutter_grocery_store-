part of 'posts_bloc.dart';

sealed class PostsState extends Equatable {
  const PostsState();

  @override
  List<Object> get props => [];
}

final class PostsInitial extends PostsState {}

abstract class PostActionState extends PostsState {}

class PostsFetchLoadingState extends PostsState {}

class PostsFetchErrorState extends PostsState {}

class PostsFetchSuccessfullState extends PostsState {
  final List<PostDataUiModel> posts;

  const PostsFetchSuccessfullState({required this.posts});
}
