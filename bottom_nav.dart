import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.lightBlueAccent,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.red,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.fastfood_outlined), label: 'recepie'),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
              ),
              label: 'favourite',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'setting')
          ]),
    );
  }
}
