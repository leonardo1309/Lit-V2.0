import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lit_2/bloc/device/device_bloc.dart';
import 'package:lit_2/models/AppConstants.dart';
import '../models/Device.dart';


class AddFavoriteButton extends StatefulWidget {
  final Device? device;

  const AddFavoriteButton({super.key, this.device});

  @override
  State<StatefulWidget> createState() => _AddFavoriteButtonState();
}

class _AddFavoriteButtonState extends State<AddFavoriteButton> {

  _onPressed() {
    BlocProvider.of<DeviceBloc>(context, listen: false)
        .add(CreateDevice(Device(name: '1', id: 'id', icon: const Icon(Icons.accessibility_new_outlined, color: Colors.white,),isOn: false)));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        padding: const EdgeInsets.all(0),

        child: const Text(
          '+',
          style: TextStyle(fontSize: 18, color: Colors.white,),
        ),

        onPressed: _onPressed,
      );
  }
}