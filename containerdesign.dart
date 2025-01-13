import 'package:flutter/material.dart';

class Containerdesign extends StatefulWidget {
  const Containerdesign({super.key});

  @override
  State<Containerdesign> createState() => _ContainerdesignState();
}

class _ContainerdesignState extends State<Containerdesign> {
  bool changeIcon = true;
  void iconChange() {
    changeIcon = !changeIcon;
  }

  Color textColor() {
    return changeIcon ? Colors.black : Colors.white;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: changeIcon ? Colors.white : Colors.black,
        body: ListView(children: [
          Column(
            children: [
              Stack(
                children: [
                  Align(
                    alignment: Alignment(0, 0),
                    child: Container(
                      height: 150,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 80),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/Azaz.jpeg'),
                        radius: 60,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 200),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Azaz Ahmad khan',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: textColor()),
                      ),
                    ),
                  )
                ],
              ),
              ListTile(
                enabled: false,
                leading: Text(
                  'phone',
                  style: TextStyle(fontSize: 20, color: textColor()),
                ),
                trailing: Text(
                  '03318590654',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: textColor()),
                ),
              ),
              ListTile(
                enabled: false,
                leading: Text(
                  'mail',
                  style: TextStyle(fontSize: 20, color: textColor()),
                ),
                trailing: Text(
                  'azaz@gmail.com',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: textColor()),
                ),
              ),
              Divider(
                height: 50,
              ),
              ListTile(
                leading: Icon(Icons.nightlight_outlined),
                title: Text(
                  'Dark Mode',
                  style: TextStyle(fontSize: 20, color: textColor()),
                ),
                trailing: IconButton(
                  onPressed: () {
                    setState(() {
                      iconChange();
                    });
                  },
                  icon: changeIcon
                      ? Icon(Icons.toggle_off_outlined)
                      : Icon(Icons.toggle_on_outlined),
                  iconSize: 40,
                ),
                onTap: () {
                  setState(() {
                    iconChange();
                  });
                },
              ),
              Divider(
                height: 20,
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text(
                  'Profile Details',
                  style: TextStyle(fontSize: 20, color: textColor()),
                ),
                onTap: () {},
              ),
              Divider(
                height: 20,
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text(
                  'Settings',
                  style: TextStyle(fontSize: 20, color: textColor()),
                ),
                onTap: () {},
              ),
              Divider(
                height: 20,
              ),
              ListTile(
                leading: Icon(Icons.logout),
                onTap: () {},
                title: Text(
                  'Log Out',
                  style: TextStyle(fontSize: 20, color: textColor()),
                ),
              ),
              Divider(
                height: 20,
              )
            ],
          ),
        ]));
  }
}
