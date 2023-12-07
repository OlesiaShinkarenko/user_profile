import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:user_profile/limit.dart';

class limitItemView extends StatelessWidget{
  final Tarifs tarif;

  const limitItemView({super.key, required this.tarif});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                tarif.image,
                width: 36,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Column(
                textDirection: TextDirection.ltr,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    tarif.name,
                    textDirection: TextDirection.ltr,
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  Text(
                    tarif.description,
                    textDirection: TextDirection.ltr,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(
                        color: Theme.of(context).hintColor),
                  ),
                ],
              ),
            ),
            new Spacer(),
            Padding(padding: const EdgeInsets.only(right: 16),
              child: IconButton(
                onPressed: () {},
                icon: const ImageIcon(AssetImage("assets/images/arrow.png")),
                color: Theme.of(context).hintColor,
              ),
            )
          ],
        ));
  }

}