import 'package:acak_dadu/dice_roller.dart';
import 'package:acak_dadu/dice_roller2.dart';
import 'package:acak_dadu/dice_roller3.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const TabBarDemo());
}

class TabBarDemo extends StatelessWidget {
  const TabBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.directions_boat_outlined)),
                Tab(icon: Icon(Icons.directions_transit_rounded)),
                Tab(icon: Icon(Icons.directions_car_outlined)),
              ],
            ),
            title: const Text('Acak Dadu'),
          ),
          body: const TabBarView(
            children: [
              (dice_roller1()),
              (dice_roller2()),
              (dice_roller3()),
            ],
          ),
        ),
      ),
    );
  }
}
