import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScreenSize extends StatefulWidget {
  const ScreenSize({super.key});

  @override
  State<ScreenSize> createState() => _ScreenSizeState();
}

class _ScreenSizeState extends State<ScreenSize> {
  void dialoging() {
    showDialog(
      context: context,
      builder: (context) {
        return CupertinoAlertDialog(
          title: Text('Error here'),
          content: Text('Are you sure you want to delete'),
          actions: [
            Row(
              children: [
                MaterialButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('Yes'),
                  color: Colors.pink,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text('No'),
                    color: Colors.pink,
                  ),
                )
              ],
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: MaterialButton(
        color: Colors.deepOrangeAccent,
        onPressed: () {
          dialoging();
        },
        child: Text('Show Dialogue'),
      ),
    ));
  }
}
