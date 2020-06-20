import 'package:cherry_components/cherry_components.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'search_page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cherry Components'),
      ),
      body: Column(
        children: [
          FlatButton(
            child: Text('BottomRoundDialog'),
            onPressed: () => showBottomRoundDialog(
              context: context,
              title: 'Sample Title',
              children: [Text('Hello!')],
            ),
          ),
          FlatButton(
            child: Text('RoundDialog'),
            onPressed: () => showRoundDialog(
              context: context,
              title: 'Sample Title',
              children: [Text('Hello!')],
            ),
          ),
        ],
      ),
    );
  }
}
