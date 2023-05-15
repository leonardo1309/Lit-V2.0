import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lit_2/bloc/device/device_bloc.dart';
import 'package:lit_2/models/AppConstants.dart';
import 'package:lit_2/views/AddFavoriteDeviceButton.dart';
import 'package:lit_2/views/ListWidgets.dart';

class HomePage extends StatefulWidget{

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 60),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(AppConstants.favoriteDevices,
                      style:
                      TextStyle(
                        fontSize: 18,
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),),
                  ),
                ),
                AddFavoriteButton()
              ],
            ),
               Padding(
                 padding: const EdgeInsets.fromLTRB(0, 10, 0, 25),
                 child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height/8,
                  child: BlocBuilder<DeviceBloc, DeviceState>(
                    builder: (_ , state){
                      print('Estoy aca');
                      return Padding(
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:  <Widget>[

                              Expanded(
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    FavDevices(),
                                    ],
                                ),
                              ),
                          ],
                        ),
                      );
                    },
                  ),
                      ),
               ),
                  ],
                ),
              );
  }
}