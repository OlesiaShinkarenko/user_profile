import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Personal extends StatelessWidget {
  final String name;
  final String image;

  const Personal({super.key, required this.name, required this.image});

  @override
  Widget build(BuildContext context) {
    return FlexibleSpaceBar(
      title: Text(name, style: Theme.of(context).textTheme.titleLarge, textAlign: TextAlign.center),
      background: Image(
        image: AssetImage(image),
      ),
      centerTitle: true,
      collapseMode: CollapseMode.pin,
    );
  }
}
