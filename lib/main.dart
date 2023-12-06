import 'package:flutter/material.dart';
import 'package:user_profile/themes/theme.dart';
import 'package:user_profile/string.dart' show Strings;

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
        padding: const EdgeInsets.only(left: 16, bottom: 0, right: 16, top: 0),
        color: Theme.of(context).backgroundColor,
        child: Column(
          textDirection: TextDirection.ltr,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              Strings.title3,
              textDirection: TextDirection.ltr,
              style: Theme.of(context).textTheme.titleMedium,
              selectionColor: Theme.of(context).scaffoldBackgroundColor,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text(
                Strings.description3,
                textDirection: TextDirection.ltr,
                style: Theme.of(context).textTheme.bodyMedium,
                selectionColor: Theme.of(context).hintColor,
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Wrap(
                  spacing: 8.0,
                  runSpacing: 8.0,
                  children: categories
                      .map((category) => Chip(
                              label: Text(
                            category,
                            style: Theme.of(context).textTheme.bodyMedium,
                          )))
                      .toList(),
                ))
          ],
        ),
      ),
    );
  }
}
