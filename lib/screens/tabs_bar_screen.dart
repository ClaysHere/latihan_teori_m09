import 'package:flutter/material.dart';

class TabBarScreen extends StatelessWidget {
  const TabBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Tab Bar"),
          bottom: const TabBar(tabs: [
            Tab(
              icon: Icon(Icons.home),
            ),
            Tab(
              icon: Icon(Icons.favorite),
            ),
            Tab(
              icon: Icon(Icons.bookmark),
            ),
          ]),
        ),
        body: const TabBarView(children: [
          Center(
            child: Text("HOME"),
          ),
          Center(
            child: Text("FAVORIT"),
          ),
          Center(
            child: Text("BOOKMARK"),
          )
        ]),
      ),
    );
  }
}
