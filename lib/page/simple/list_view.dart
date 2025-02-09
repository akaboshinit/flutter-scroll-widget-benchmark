import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {
  const ListViewPage({required this.length, super.key});

  final int length;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView'),
      ),
      body: ListView.builder(
        itemCount: length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Item $index'),
          );
        },
      ),
    );
  }
}

