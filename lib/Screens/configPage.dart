import 'package:flutter/widgets.dart';

class ConfigPage extends StatefulWidget{

  const ConfigPage({super.key});

  @override
  State<ConfigPage> createState() => _ConfigPageState();
}

class _ConfigPageState extends State<ConfigPage>{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Configuration'),
    );
  }
}