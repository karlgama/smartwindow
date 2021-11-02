import 'package:flutter/material.dart';
import 'package:iot/database/app_database.dart';
import 'package:iot/models/window.dart';
import 'package:iot/screens/window_detail.dart';

class WindowsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de janelas cadastradas'),
      ),
      body: FutureBuilder<List<Window>>(
        initialData: [],
        future: findAll(),
        builder: (context, snapshot) {
          final List<Window> windows = snapshot.data as List<Window>;
          return ListView.builder(
            itemBuilder: (context, index) {
              final Window window = windows[index];
              return _WindowCard(window);
            },
            itemCount: windows.length,
          );
        },
      ),
    );
  }
}

class _WindowCard extends StatelessWidget {
  final Window window;

  _WindowCard(this.window);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => WindowDetails(),
            ),
          );
        },
        child: Column(
          children: [
            Image.asset(
              './lib/assets/open_window.jpg',
              width: 200,
              height: 200,
            ),
            Text(window.name),
            Text(window.status),
          ],
        ),
      ),
    );
  }
}
