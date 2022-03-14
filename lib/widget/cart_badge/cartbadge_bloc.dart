import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:employee_db/database/dbhelper.dart';

import 'package:equatable/equatable.dart';

part 'cartbadge_event.dart';
part 'cartbadge_state.dart';

class CartbadgeBloc extends Bloc<CartbadgeEvent, CartbadgeState> {
  CartbadgeBloc() : super(CartbadgeInitial());

  @override
  Stream<CartbadgeState> mapEventToState(
    CartbadgeEvent event,
  ) async* {
    if (event is GetCount) {
      yield Cartbadge(count: await DBHelper().getCount());
    }
  }
}
