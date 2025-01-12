import 'package:flutter/material.dart';

class Creatcontainer extends StatelessWidget {
  const Creatcontainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('CONTAINER DESIGN'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          height: 100,
          width: 100,
          // color: Colors.blue,
          child: Text('HI  DEVOPS'),
          alignment: Alignment(0, 0),
          decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(image: AssetImage('assets/Azaz.jpeg'))),
        ),
      ),
    );
  }
}
