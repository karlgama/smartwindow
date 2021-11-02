import 'package:flutter/material.dart';
import 'package:iot/components/window_card.dart';

class WindowDetails extends StatelessWidget {
  // final List<bool> isSelected;

  // WindowDetails(this.isSelected);
  final isSelected = [true, true];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalhes da janela'),
      ),
      body: Column(
        children: [
          WindowCard(),
          ToggleButtons(
            children: [Icon(Icons.check_circle), Icon(Icons.cancel)],
            onPressed: (int index) {
              // setState(() {
              //   for (int buttonIndex = 0;
              //       buttonIndex < isSelected.length;
              //       buttonIndex++) {
              //     if (buttonIndex == index) {
              //       isSelected[buttonIndex] = true;
              //     } else {
              //       isSelected[buttonIndex] = false;
              //     }
              //   }
              // });
            },
            isSelected: isSelected,
          ),
        ],
      ),
    );
  }
}
