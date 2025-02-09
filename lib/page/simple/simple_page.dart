import 'package:flutter/material.dart';
import 'package:flutter_scroll_widget_benchmark/page/simple/custom_scroll_view_page.dart';
import 'package:flutter_scroll_widget_benchmark/page/simple/list_view.dart';
import 'package:flutter_scroll_widget_benchmark/page/simple/single_child_scroll_view_page.dart';

class SimplePage extends StatelessWidget {
  const SimplePage({super.key});

  @override
  Widget build(BuildContext context) {
    final length = 1000;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Widget Benchmark'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ListTile(
              title: const Text('ListView'),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ListViewPage(length: length),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('SingleChildScrollView'),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>
                        SingleChildScrollViewPage(length: length),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('CustomScrollView'),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => CustomScrollViewPage(length: length),
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
