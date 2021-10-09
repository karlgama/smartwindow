import 'package:flutter/material.dart';

class Home extends StatelessWidget {
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
                  labelText: 'Sua janela',
                ),
                style: TextStyle(
                  fontSize: 24.4,
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('adicionar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
