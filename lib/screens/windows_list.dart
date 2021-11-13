import 'package:flutter/material.dart';
import 'package:iot/database/app_database.dart';
import 'package:iot/models/window.dart';
import 'package:iot/screens/window_detail.dart';
import 'package:iot/screens/window_register.dart';

class WindowsList extends StatefulWidget {
  @override
  _WindowsList createState() => _WindowsList();
}

class _WindowsList extends State<WindowsList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Janelas'),
      ),
      body: FutureBuilder<List<Window>>(
        initialData: [],
        future: findAll(),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircularProgressIndicator(
                      color: Colors.blue[300],
                    ),
                    Text("Carregando...")
                  ],
                ),
              );
            case ConnectionState.done:
              final List<Window>? windows = snapshot.data;
              return ListView.builder(
                itemBuilder: (context, index) {
                  final Window window = windows![index];
                  return _WindowCard(window);
                },
                itemCount: windows!.length,
              );
            default:
              return Text("Unknown error");
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(
            builder: (context) => WindowRegister(),
          ))
              .then((value) {
            setState(() {});
          });
        },
        child: Icon(Icons.add),
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
            Text(window.name),
            Text(window.status),
          ],
        ),
      ),
    );
  }
}
