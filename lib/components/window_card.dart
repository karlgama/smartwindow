import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iot/screens/window_detail.dart';

class WindowCard extends StatelessWidget {
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
            Text('Nome da janela'),
            Text('Status: Aberta'),
          ],
        ),
      ),
    );
  }
}
