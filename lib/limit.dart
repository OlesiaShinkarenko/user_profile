import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:user_profile/limitItem.dart';

class Tarifs {
  final String name;
  final String image;
  final String description;

  Tarifs({required this.name, required this.image,   this.description= ""});
}

class limitView extends StatelessWidget {
  final String title;
  final String description;
  final EdgeInsets padding;
  final List<Tarifs> tarifs;

  const limitView(
      {super.key,
      required this.title,
      required this.padding,
      required this.description,
      required this.tarifs});

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
            child: Text(
              description,
              textDirection: TextDirection.ltr,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Theme.of(context).hintColor,
                  ),
            ),
          ),
          ListView.separated(
              shrinkWrap: true,
              separatorBuilder: (BuildContext context, int index) =>
                  Divider(indent: 50.0),
              itemCount: tarifs.length,
              itemBuilder: (BuildContext context, int index) {
                return limitItemView(tarif: tarifs[index]);
              })
        ],
      ),
    );
  }
}
