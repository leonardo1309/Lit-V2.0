import 'package:flutter/widgets.dart';

class ControlPage extends StatefulWidget{

  const ControlPage({super.key});

  @override
  State<ControlPage> createState() => _ControlPageState();
}

class _ControlPageState extends State<ControlPage>{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Control'),
    );
  }
}