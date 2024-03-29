import 'package:flutter/material.dart';

// runApp 接受Widget作为根树
void main() => runApp(new App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Tmachine',
      theme: new ThemeData(
        primarySwatch: Colors.red,
      ),
      home: new Scaffold(
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const RaisedButton(
                onPressed: null,
                child: Text('Disabled Button', style: TextStyle(fontSize: 20)),
              ),
              const SizedBox(height: 30),
              RaisedButton(
                onPressed: () {},
                child: const Text('Enabled Button',
                    style: TextStyle(fontSize: 20)),
              ),
              const SizedBox(height: 30),
              RaisedButton(
                onPressed: () {},
                textColor: Colors.white,
                padding: const EdgeInsets.all(0.0),
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: <Color>[
                        Color(0xFF0D47A1),
                        Color(0xFF1976D2),
                        Color(0xFF42A5F5),
                      ],
                    ),
                  ),
                  padding: const EdgeInsets.all(10.0),
                  child: const Text('Gradient Button',
                      style: TextStyle(fontSize: 20)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
