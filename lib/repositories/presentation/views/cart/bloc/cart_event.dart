part of 'cart_bloc.dart';

abstract class CartEvent extends Equatable {
  const CartEvent();

  @override
  List<Object> get props => [];
}

class OnCartTapped extends CartEvent {
  final int tabIndex;

  const OnCartTapped({required this.tabIndex});
}
