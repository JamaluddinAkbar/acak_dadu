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
            title: const Text('Acak Dadu'),
            titleTextStyle: TextStyle(color: const Color.fromARGB(255, 255, 255, 255), fontSize: 20),
            backgroundColor: Colors.deepPurple,
            bottom: const TabBar(
              indicatorColor: Colors.amber,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.white70,
              tabs: [
                Tab(text: "Dadu 1",),
                Tab(text: "Dadu 2",),
                Tab(text: "Dadu 3",),
              ],
            ),
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
