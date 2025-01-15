import 'package:flutter/material.dart';

class TabViewClass extends StatelessWidget {
  TabViewClass({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('T A B B A R '),
          backgroundColor: Colors.deepPurple,
        ),
        body: Column(
          children: [
            TabBar(
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.home,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.person,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.settings,
                  ),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(children: [
                Container(
                  child: Center(
                    child: Text('TAB NO 01'),
                  ),
                  color: Colors.deepOrange,
                ),
                Container(
                  child: Center(
                    child: Text('TAB #02'),
                  ),
                  color: Colors.blue,
                ),
                Container(
                  color: Colors.green,
                  child: Center(
                    child: Text('TAB #03'),
                  ),
                )
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
