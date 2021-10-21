import 'package:flutter/material.dart';
import 'package:iot/components/window_card.dart';

class WindowsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de janelas cadastradas'),
      ),
      body: Container(
        width: double.maxFinite,
        child: Column(
          children: [
            WindowCard(),
            WindowCard(),
          ],
        ),
      ),
    );
  }
}
