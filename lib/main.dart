import 'package:flutter/material.dart';
import 'package:user_profile/themes/theme.dart';
import 'package:user_profile/string.dart' show Strings;
import 'package:user_profile/interest.dart' show Interest;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: createTheme(),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> categories = [
    Strings.category1,
    Strings.category2,
    Strings.category3,
    Strings.category4,
    Strings.category5,
    Strings.category6,
    Strings.category7,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Interest(
                categories: categories,
                title: Strings.title3,
                description: Strings.description3,
                padding: const EdgeInsets.only(
                    left: 16, bottom: 0, right: 16, top: 0))
          ],
        ),
      ),
    );
  }
}


