import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return MyHomePageState();
  }
}

class MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Badge.count(
              isLabelVisible: _counter != 0,
              textColor: Colors.black,
              backgroundColor: Colors.red,
              count: _counter,
              offset: const Offset(8.0, -8.0),
              child: const Icon(
                Icons.settings,
              ),
            ),
            const SizedBox(
              height: 16.0,
            ),
            badges.Badge(
              showBadge: _counter != 0,
              badgeContent: Text('$_counter'),
              child: const Icon(Icons.settings),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
      ),
    );
  }
}
