import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:lit_2/models/Device.dart';
import 'package:meta/meta.dart';

import '../../models/NavItem.dart';

part 'navItem_event.dart';
part 'navItem_state.dart';

class NavItemBloc extends Bloc<NavItemEvent, NavItemState> {
  NavItemBloc(): super(const NavItemInitialState()) {

    on<SelectNavItemEvent>( (event, emit) {
      emit(NavSetState(event.navItem));
      debugPrint(event.navItem.index.toString());
    });
  }
}