
part of 'device_bloc.dart';

@immutable
abstract class DeviceState {
  final bool isOn;
  final Device? device;

  const DeviceState({this.isOn = false, this.device});
}

class DeviceInitialState extends DeviceState {
  const DeviceInitialState(): super(device: null, isOn: false);
}