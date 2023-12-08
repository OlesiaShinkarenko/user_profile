import 'package:flutter/material.dart';
import 'package:user_profile/subscribeItem.dart';
import 'package:user_profile/themes/color.dart';

class SubscribeView extends StatelessWidget {
  final String title;
  final String description;
  final EdgeInsets padding;
  final List<Subscribe> subscribes;

  const SubscribeView(
      {super.key,
      required this.title,
      required this.description,
      required this.padding,
      required this.subscribes});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: padding,
        child: Column(
          textDirection: TextDirection.ltr,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              textDirection: TextDirection.ltr,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Column(
                  textDirection: TextDirection.ltr,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      description,
                      textDirection: TextDirection.ltr,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: Theme.of(context).hintColor,
                          ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: SizedBox(
                        height: 140.0,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: subscribes.length,
                          itemBuilder: (context, index) {
                            return subscribeItem(subscribe: subscribes[index], width: 230.0, height: 130.0);
                          },
                        ),
                      ),
                    ),
                  ],
                )),
          ],
        ));
  }
}

class Subscribe {
  final String name;
  final String image;
  final String condition;
  final String cost;

  Subscribe(
      {required this.name,
      required this.image,
      required this.condition,
      required this.cost});
}
