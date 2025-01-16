import 'package:flutter/material.dart';

class ScreenSize extends StatefulWidget {
  const ScreenSize({super.key});

  @override
  State<ScreenSize> createState() => _ScreenSizeState();
}

class _ScreenSizeState extends State<ScreenSize> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text('height' + MediaQuery.of(context).size.height.toString()),
            Text('width' + MediaQuery.of(context).size.width.toString()),
            Text('Aspect Ratio' +
                MediaQuery.of(context).size.aspectRatio.toStringAsFixed(2)),
            Text('orientation' + MediaQuery.of(context).orientation.toString())
          ],
        ),
      ),
    );
  }
}
