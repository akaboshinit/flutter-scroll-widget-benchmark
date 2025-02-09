import 'package:flutter/material.dart';

class CustomScrollViewPage extends StatelessWidget {
  const CustomScrollViewPage({required this.length, super.key});

  final int length;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CustomScrollView'),
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return ListTile(
                  title: Text('Item $index'),
                );
              },
              childCount: length,
            ),
          ),
        ],
      ),
    );
  }
}
