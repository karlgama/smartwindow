import 'package:flutter/material.dart';
import 'package:iot/models/window.dart';
import 'package:iot/screens/windows_list.dart';

class WindowRegister extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TextEditingController _nameController = TextEditingController();
    final TextEditingController _channelController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text('SmartWindow'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _nameController,
                decoration: InputDecoration(
                  labelText: 'Sua janela Ex: janela do quarto',
                ),
                style: TextStyle(
                  fontSize: 24.4,
                ),
              ),
              // TextField(
              //   controller: _channelController,
              //   decoration: InputDecoration(
              //     labelText: 'Channel',
              //   ),
              //   style: TextStyle(
              //     fontSize: 24.4,
              //   ),
              // ),
              ElevatedButton(
                onPressed: () {
                  final String name = _nameController.text;
                  final String channel = _channelController.text;
                  final Window newWindow = Window(0, name, channel, 'fechada');
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => WindowsList(),
                    ),
                  );
                },
                child: Text('adicionar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
