import 'package:bloc/bloc.dart';
import 'package:lit_2/models/Device.dart';
import 'package:meta/meta.dart';

part 'device_event.dart';
part 'device_state.dart';

class DeviceBloc extends Bloc<DeviceEvent, DeviceState> {
  DeviceBloc(): super(const DeviceInitialState()) {

    on<ToggleDevice>( (event, emit) {

    });
  }
}