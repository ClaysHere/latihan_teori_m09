import 'package:flutter/material.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({super.key});

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  final List<Widget> _content = [
    const Text("Home"),
    const Text("Favorit"),
    const Text("Bookmark")
  ];

  List<Map<String, List>> content = [
    {
      "tab": [
        const Tab(
          icon: Icon(Icons.home),
        ),
        const Tab(
          icon: Icon(Icons.favorite),
        ),
        const Tab(
          icon: Icon(Icons.bookmark),
        ),
      ],
      "view": [
        const Center(
          child: Text("HOME"),
        ),
        const Center(
          child: Text("FAVORIT"),
        ),
        const Center(
          child: Text("BOOKMARK"),
        )
      ]
    }
  ];

  int _initialIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Drawer"),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 160,
              color: Colors.purple,
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(),
                    SizedBox(
                      height: 12,
                    ),
                    Text("nama lengkap"),
                    Text("Email@gmail.com")
                  ],
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Home"),
              onTap: () {
                setState(() {
                  _initialIndex = 0;
                });
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              leading: const Icon(Icons.favorite),
              title: const Text("Favorit"),
              onTap: () {
                setState(() {
                  _initialIndex = 1;
                });
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              leading: const Icon(Icons.book),
              title: const Text("Bookmark"),
              onTap: () {
                setState(() {
                  _initialIndex = 2;
                });
                Navigator.of(context).pop();
              },
            ),
            const Divider(),
            const ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
            ),
            const ListTile(
              leading: Icon(Icons.info),
              title: Text("Info"),
            ),
          ],
        ),
      ),
      body: Center(
        child: _content[_initialIndex],
      ),
    );
  }
}
