import 'package:bloc/bloc.dart';
import 'package:lit_2/models/Device.dart';
import 'package:meta/meta.dart';

import '../../models/data.dart';

part 'device_event.dart';
part 'device_state.dart';

class DeviceBloc extends Bloc<DeviceEvent, DeviceState> {
  DeviceBloc(): super(const DeviceInitialState()) {

    on<ToggleDevice>( (event, emit) {
      emit( DeviceSetState( event.device));
      print(event.device.isOn.toString());
    });

    on<CreateDevice>( (event, emit){
      emit( DeviceSetState(event.device));
      Data.devicesList.add(event.device);
      print('Device created!');
      print(Data.devicesList.length.toString());
    });
  }
}