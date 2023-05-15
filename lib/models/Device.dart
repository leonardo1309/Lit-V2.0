import 'package:flutter/cupertino.dart';

class Device {
  String name;
  bool isOn;
  final String id;
  Icon? icon;

  Device({
    required this.name,
    required this.id,
    required this.isOn,
    this.icon});
}