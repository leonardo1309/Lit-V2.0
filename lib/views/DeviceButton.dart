import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lit_2/bloc/device/device_bloc.dart';
import 'package:lit_2/models/AppConstants.dart';
import '../models/Device.dart';


class DeviceButton extends StatefulWidget {
  final Device device;

  const DeviceButton({super.key, required this.device});

  @override
  State<StatefulWidget> createState() => _DeviceButtonState();
}

class _DeviceButtonState extends State<DeviceButton> {

  _onPressed(Device device) {
    device.isOn = !widget.device.isOn;
    device.icon = Icon(Icons.access_time,color: device.isOn ? AppConstants.appSecondaryColor : Colors.white,);
    BlocProvider.of<DeviceBloc>(context, listen: false)
        .add(ToggleDevice(device));
    print('Pressed!');
  }

  @override
  Widget build(BuildContext context) {
    double elevation = widget.device.isOn ? 8 : 0;
    return Padding(
      padding: const EdgeInsets.fromLTRB(3, 12, 10, 38),

        child: AnimatedPhysicalModel(
          duration: const Duration(milliseconds: 300),
          shape: BoxShape.circle,
          color: AppConstants.appColor,
          elevation: elevation,
          shadowColor: AppConstants.appSecondaryColor,
          curve: Curves.easeInQuad,
          animateColor: false,
          clipBehavior: Clip.antiAlias,

          child: Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width / 7,

            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.transparent,
              border: Border.all(color: AppConstants.appSecondaryColor, width: 2),
            ),

            child: Theme(
                data: ThemeData(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                ),

                child: MaterialButton(
                  padding: const EdgeInsets.all(0),

                    onPressed: () {
                      _onPressed(widget.device);
                    },

                    child: widget.device.icon,
                ),
            ),
          ),
        ),
      );
  }
}
