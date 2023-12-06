import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Personal extends StatelessWidget {
  final String name;
  final String image;

  const Personal({super.key, required this.name, required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 60),
      child: Center(
          child: Column(
        children: [
          Image(
            image: AssetImage(image),
          ),
          Text(name, style: Theme.of(context).textTheme.titleLarge)
        ],
      )),
    );
  }
}
