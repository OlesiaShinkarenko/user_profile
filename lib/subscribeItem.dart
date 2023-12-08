import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:user_profile/subscribe.dart';
import 'package:user_profile/themes/color.dart';

class subscribeItem extends StatelessWidget {
  final Subscribe subscribe;
  final double width;
  final double height;

  const subscribeItem({super.key, required this.subscribe, required this.width, required this.height});
  @override
  Widget build(BuildContext context) {


    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        child: SizedBox(
            height: height,
            width: width,
            child: Padding(
              padding: EdgeInsets.only(top: 5, bottom: 5),
              child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: Theme.of(context).cardColor,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: const <BoxShadow>[
                      BoxShadow(
                        color: AppColors.GrayBackgroundColor,
                        blurRadius: 10.0,
                        spreadRadius: 3.0,
                      )
                    ],
                  ),
                  child: Padding(
                      padding: EdgeInsets.only(
                          left: 16, bottom: 16, right: 16, top: 24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        textDirection: TextDirection.ltr,
                        children: [
                          Row(
                            children: [
                              Image.asset(subscribe.image),
                              Padding(
                                padding: EdgeInsets.only(left: 12),
                                child: Text(subscribe.name,
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleSmall!
                                        .copyWith(
                                            color: Theme.of(context)
                                                .secondaryHeaderColor)),
                              )
                            ],
                          ),
                          Column(
                            textDirection: TextDirection.ltr,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                textDirection: TextDirection.ltr,
                                subscribe.condition,
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                              Text(
                                subscribe.cost,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                        color: Theme.of(context).hintColor),
                              )
                            ],
                          )
                        ],
                      ))),
            )));
  }
}
