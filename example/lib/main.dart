import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import './views/index.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cherry Example',
      themeMode: ThemeMode.system,
      darkTheme: ThemeData.dark(),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextTheme _textTheme = GoogleFonts.robotoTextTheme();

  final List<String> _tabTitles = [
    'CardCell',
    'DetailsCell',
    'DialogRound',
    'HeaderText',
    'ItemCell',
    'ListCell',
    'RadioCell',
  ];

  final _views = [
    CardCellView(),
    DetailsCellView(),
    DialogRoundView(),
    HeaderTextView(),
    ItemCellView(),
    ListCellView(),
    RadioCellView(),
  ];

  final List<String> _textThemeStrings = [
    'roboto',
    'rubik',
  ];

  final List<TextTheme> _textThemeData = [
    GoogleFonts.robotoTextTheme(),
    GoogleFonts.rubikTextTheme()
  ];

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(textTheme: _textTheme),
      child: DefaultTabController(
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
            actions: [
              PopupMenuButton<String>(
                onSelected: (value) => setState(
                  () => _textTheme =
                      _textThemeData[_textThemeStrings.indexOf(value)],
                ),
                itemBuilder: (_) => [
                  for (final entry in _textThemeStrings)
                    CheckedPopupMenuItem<String>(
                      checked: _textTheme ==
                          _textThemeData[_textThemeStrings.indexOf(entry)],
                      value: entry,
                      child: Text(entry),
                    ),
                ],
              ),
            ],
          ),
          body: TabBarView(
            children: _views,
          ),
        ),
      ),
    );
  }
}
