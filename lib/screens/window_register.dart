import 'package:flutter/material.dart';
import 'package:iot/screens/windows_list.dart';

class WindowRegister extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                decoration: InputDecoration(
                  labelText: 'Sua janela Ex: janela do quarto',
                ),
                style: TextStyle(
                  fontSize: 24.4,
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Channel',
                ),
                style: TextStyle(
                  fontSize: 24.4,
                ),
              ),
              ElevatedButton(
                onPressed: () {
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
