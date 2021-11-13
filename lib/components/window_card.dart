import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iot/screens/window_detail.dart';
import 'package:iot/models/window.dart';

class WindowCard extends StatelessWidget {
  final Window window;
  WindowCard(this.window);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => WindowDetails(window),
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
            Text(window.name.toString()),
            Text('Status:' + window.status.toString()),
          ],
        ),
      ),
    );
  }
}
