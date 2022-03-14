part of 'cartbadge_bloc.dart';

abstract class CartbadgeState extends Equatable {
  const CartbadgeState();

  @override
  List<Object> get props => [];
}

class CartbadgeInitial extends CartbadgeState {
  final int count;
  CartbadgeInitial({this.count = 0});
  @override
  List<Object> get props => [this.count];
}

class Cartbadge extends CartbadgeState {
  final int count;
  Cartbadge({this.count = 0});
  @override
  List<Object> get props => [this.count];
}
