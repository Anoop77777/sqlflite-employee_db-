part of 'cartbadge_bloc.dart';

abstract class CartbadgeEvent extends Equatable {
  const CartbadgeEvent();

  @override
  List<Object> get props => [];
}

class GetCount implements CartbadgeEvent {
  @override
  List<Object> get props => [];

  @override
  bool get stringify => false;
}
