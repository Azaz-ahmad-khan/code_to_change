import 'dart:async';

import 'package:flutter/material.dart';

class Timming extends StatefulWidget {
  const Timming({super.key});

  @override
  State<Timming> createState() => _TimmingState();
}

class _TimmingState extends State<Timming> {
  int timeleft = 5;
  void startTimming() {
    Timer.periodic(
      Duration(seconds: 1),
      (timer) {
        setState(() {
          if (timeleft > 0) {
            timeleft--;
          } else {
            timer.cancel();
          }
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            timeleft == 0 ? 'DONE' : timeleft.toString(),
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
          MaterialButton(
            onPressed: () {
              startTimming();
            },
            child: Text(
              'Start',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            color: Colors.redAccent,
          )
        ],
      ),
    ));
  }
}
