
part of 'navItem_bloc.dart';

@immutable
abstract class NavItemState {
  final bool selected;
  final NavItem? navItem;

  const NavItemState({this.selected = false, this.navItem});
}

class NavItemInitialState extends NavItemState {
  const NavItemInitialState(): super(selected: false, navItem: null);
}

class NavSetState extends NavItemState {
  final NavItem item;
  const NavSetState(this.item)
  : super(selected: true, navItem: item);
}