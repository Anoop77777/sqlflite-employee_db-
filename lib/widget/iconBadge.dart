import 'package:badges/badges.dart';

import 'package:employee_db/employeelist.dart';
import 'package:employee_db/widget/cart_badge/cartbadge_bloc.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kiwi/kiwi.dart' as kiwi;

class IconBadge extends StatelessWidget {
  const IconBadge({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    kiwi.KiwiContainer kiwiContainer = kiwi.KiwiContainer();
    return BlocBuilder<CartbadgeBloc, CartbadgeState>(
      bloc: kiwiContainer.resolve("cartBadge")..add(GetCount()),
      builder: (context, state) {
        if (state is Cartbadge)
          return IconButton(
            icon: Badge(
                toAnimate: false,
                badgeContent: Text(state.count.toString(),
                    style: TextStyle(color: Colors.white)),
                child: const Icon(Icons.view_list)),
            tooltip: 'Next choice',
            onPressed: () {
              Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => new MyEmployeeList()),
              );
            },
          );
        return Container();
      },
    );
  }
}
