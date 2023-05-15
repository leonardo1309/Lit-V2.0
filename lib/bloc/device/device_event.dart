
part of 'device_bloc.dart';

@immutable
abstract class DeviceEvent {}

class ToggleDevice extends DeviceEvent {
  final Device device;
  ToggleDevice(this.device);
}

class CreateDevice extends DeviceEvent {
  final Device device;
  CreateDevice(this.device);
}