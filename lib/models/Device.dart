import 'package:flutter/cupertino.dart';

class Device {
  String name;
  final String id;
  //late double value;
  //late bool isOn;
  Icon icon;

  Device({
    required this.name,
    required this.id,
    required this.icon});
}