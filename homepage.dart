import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
            //      Center(
            //         child: Text(
            //   'FLUTTER',
            //   style: TextStyle(
            //       fontWeight: FontWeight.bold,
            //       fontStyle: FontStyle.italic,
            //       fontSize: 50,
            //       color: Colors.amber),

            // )
            // ),
            CustomScrollView(slivers: [
      SliverAppBar(
        // title: Text('SLIVER APPBAR'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        // floating: true,
        leading: Icon(Icons.menu),
        expandedHeight: 300,
        flexibleSpace: FlexibleSpaceBar(
          title: Text('SLIVER APPBAR'),
          centerTitle: true,
          background: Container(
            color: Colors.pink,
          ),
        ),
        floating: true,
        pinned: true,
      ),
      SliverToBoxAdapter(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30.0),
            child: Container(
              color: Colors.deepPurple,
              height: 400,
            ),
          ),
        ),
      ),
      SliverToBoxAdapter(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30.0),
            child: Container(
              color: Colors.deepPurple,
              height: 400,
            ),
          ),
        ),
      ),
      SliverToBoxAdapter(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30.0),
            child: Container(
              color: Colors.deepPurple,
              height: 400,
            ),
          ),
        ),
      ),
      SliverToBoxAdapter(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30.0),
            child: Container(
              color: Colors.deepPurple,
              height: 400,
            ),
          ),
        ),
      ),
      SliverToBoxAdapter(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30.0),
            child: Container(
              color: Colors.deepPurple,
              height: 400,
            ),
          ),
        ),
      ),
    ]));
  }
}
