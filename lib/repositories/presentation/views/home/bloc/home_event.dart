part of 'home_bloc.dart';

abstract class HomeEvent extends Equatable {
  const HomeEvent();

  @override
  List<Object> get props => [];
}

class TapChanged extends HomeEvent {
  final int tabIndex;

  const TapChanged({required this.tabIndex});
}
