import 'package:flutter/cupertino.dart';
import 'package:lit_2/views/DeviceButton.dart';
import '../models/data.dart';

class FavDevices  extends StatefulWidget{
  const FavDevices({super.key});

  @override
  State<FavDevices> createState() => _FavDevicesState();

}

class _FavDevicesState extends State<FavDevices>{
  @override
  Widget build(BuildContext context) {

    return ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: Data.devicesList.length,
          itemBuilder: (_, index){
          return DeviceButton(device: Data.devicesList[index]);
          });
  }
}