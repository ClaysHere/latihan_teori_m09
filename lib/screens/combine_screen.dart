import 'package:flutter/material.dart';

class CombineScreen extends StatefulWidget {
  const CombineScreen({super.key});

  @override
  State<CombineScreen> createState() => _CombineScreenState();
}

class _CombineScreenState extends State<CombineScreen> {
  final List<Map> _pages = [
    {
      "body": "App",
      "tab": [
        "Popular",
        "News",
        "Hots",
      ],
    },
    {
      "body": "Games",
      "tab": [
        "Racing",
        "Strategy",
        "Card",
      ],
    },
    {
      "body": "Books",
      "tab": [
        "Novel",
        "Science",
        "Math",
      ],
    },
  ];

  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Combine Screens"),
          bottom: TabBar(tabs: [
            ..._pages[_index]["tab"].map((e) {
              return Tab(
                text: e,
              );
            })
          ]),
        ),
        drawer: Drawer(
          child: Column(
            children: [
              const SizedBox(
                height: 160,
              ),
              ListTile(
                leading: const Icon(Icons.apps),
                title: const Text("Apps"),
                onTap: () {
                  setState(() {
                    _index = 0;
                  });
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                leading: const Icon(Icons.games),
                title: const Text("Games"),
                onTap: () {
                  setState(() {
                    _index = 1;
                  });
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                leading: const Icon(Icons.book),
                title: const Text("Books"),
                onTap: () {
                  setState(() {
                    _index = 2;
                  });
                  Navigator.of(context).pop();
                },
              )
            ],
          ),
        ),
        body: TabBarView(children: [
          ..._pages[_index]["tab"].map((e) {
            return Center(
              child: Text("${_pages[_index]["body"]} $e"),
            );
          }),
        ]),
      ),
    );
  }
}
