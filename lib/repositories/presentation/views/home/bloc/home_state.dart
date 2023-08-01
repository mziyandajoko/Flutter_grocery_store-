// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'home_bloc.dart';

abstract class HomeState extends Equatable {
  final int tabIndex;
  const HomeState({
    required this.tabIndex,
  });

  @override
  List<Object> get props => [];
}

class HomeInitial extends HomeState {
  const HomeInitial({required super.tabIndex});
}

class HomeLoadedSucessState extends HomeState {
  final List<GroceryData> products;

  const HomeLoadedSucessState(
      {required super.tabIndex, required this.products});
}
