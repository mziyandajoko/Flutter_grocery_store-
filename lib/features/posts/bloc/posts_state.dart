part of 'posts_bloc.dart';

sealed class PostsState extends Equatable {
  const PostsState();

  @override
  List<Object> get props => [];
}

final class PostsInitial extends PostsState {}

class PostsFetchSuccessfullState extends PostsState {
  final List<PostDataUiModel> posts;

  const PostsFetchSuccessfullState({required this.posts});
}
