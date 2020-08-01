import 'package:flutter/material.dart';

import './views/index.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cherry Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<String> _tabTitles = [
    'CacheImage',
    'CardCell',
    'DetailsCell',
    'DialogRound',
    'ExpandWidget',
    'HeaderText',
    'ItemCell',
    'ListCell',
    'RadioCell',
    'RowItem',
  ];

  final List<Widget> _views = [
    CacheImageView(),
    CardCellView(),
    DetailsCellView(),
    DialogRoundView(),
    ExpandWidgetView(),
    HeaderTextView(),
    ItemCellView(),
    ListCellView(),
    RadioCellView(),
    RowItemView(),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabTitles.length,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            isScrollable: true,
            tabs: [
              for (final title in _tabTitles) Tab(text: title),
            ],
          ),
          title: Text('Cherry Components'),
        ),
        body: TabBarView(
          children: _views,
        ),
      ),
    );
  }
}
