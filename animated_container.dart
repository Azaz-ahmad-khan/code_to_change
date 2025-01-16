import 'package:flutter/material.dart';

class ChangeAnimations extends StatefulWidget {
  const ChangeAnimations({super.key});

  @override
  State<ChangeAnimations> createState() => _ChangeAnimationsState();
}

class _ChangeAnimationsState extends State<ChangeAnimations> {
  double width = 100;
  double height = 100;
  double x = -1;
  double y = -1;
  var color = Colors.pink;

  void boxheiht() {
    setState(() {
      height++;
      width++;
    });
  }

  void changeLocation() {
    setState(() {
      x - 1;
      y - 1;
    });
  }

  void boxColors() {
    setState(() {
      color = Colors.amber;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      body: Center(
        child: GestureDetector(
          onTap: () {
            boxColors();
            changeLocation();
            boxheiht();
          },
          child: Align(
            alignment: Alignment(x, y),
            child: AnimatedContainer(
              duration: Duration(seconds: 2),
              height: height,
              width: width,
              color: color,
            ),
          ),
        ),
      ),
    );
  }
}
