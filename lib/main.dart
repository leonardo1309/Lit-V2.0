import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lit_2/bloc/bottomNavItem/navItem_bloc.dart';
import 'package:lit_2/bloc/device/device_bloc.dart';
import 'package:lit_2/Screens/mainDashboard.dart';

import 'models/AppConstants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: ( _ ) => DeviceBloc()),
        BlocProvider(create: ( _ ) => NavItemBloc()),
      ],
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blueGrey,
        ),
        home: MyHomePage(title: 'Lit',),
        routes: {
          MainDashboard.routeName: (context) => MainDashboard(),
        },
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    Timer(Duration(seconds: 1), (){
      Navigator.pushNamed(this.context, MainDashboard.routeName);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.lightbulb_outline,
              size: 80,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Text('${AppConstants.appName}',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
