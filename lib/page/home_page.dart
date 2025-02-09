import 'package:flutter/material.dart';
import 'package:flutter_scroll_widget_benchmark/page/simple/simple_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scroll Widget Benchmark'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ListTile(
              title: const Text('Simple Widgets'),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => SimplePage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
