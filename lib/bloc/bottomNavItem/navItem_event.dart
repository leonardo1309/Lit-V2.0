
part of 'navItem_bloc.dart';

@immutable
abstract class NavItemEvent {}

class SelectNavItemEvent extends NavItemEvent {
  final NavItem navItem;

  SelectNavItemEvent(this.navItem);
}