import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BottomSheetScreen extends StatelessWidget {
  const BottomSheetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bottom Sheet"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                shape: const Border(
                    top: BorderSide(width: 10, color: Colors.purple)),
                context: context,
                builder: (context) {
                  return const Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.share),
                        title: Text("share"),
                      ),
                      ListTile(
                        leading: Icon(Icons.favorite),
                        title: Text("add to favorite"),
                      )
                    ],
                  );
                },
              );
            },
            child: const Text("Show Modal")),
      ),
    );
  }
}
