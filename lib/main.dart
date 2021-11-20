import 'package:flutter/material.dart';
import 'package:iot/screens/windows_list.dart';

import 'infra/MQTTClientWrapper.dart';

main() {
  MQTTClientWrapper newclient = new MQTTClientWrapper();
  newclient.prepareMqttClient();
  runApp(SmartWindow());
}

class SmartWindow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.cyan[900],
        accentColor: Colors.green[700],
      ),
      home: WindowsList(),
    );
  }
}
