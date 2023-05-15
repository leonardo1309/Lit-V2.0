
part of 'device_bloc.dart';

@immutable
abstract class DeviceState {
  final bool isOn;
  final double? value;
  final Device? device;

  const DeviceState({this.isOn = false, this.value, this.device});
}

class DeviceInitialState extends DeviceState {
  const DeviceInitialState(): super(isOn: false);
}

class DeviceSetState extends DeviceState {
  final Device newDevice;
  const DeviceSetState(this.newDevice) : super(device: newDevice);
}


class DeviceToggle extends DeviceState {
  final Device newDevice;
  const DeviceToggle(this.newDevice) : super(isOn: false);

}
