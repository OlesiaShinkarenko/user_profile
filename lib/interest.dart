import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Interest extends StatefulWidget {
  final List<String> categories;
  final String title;
  final String description;
  final EdgeInsets padding;

  const Interest({super.key,
    required this.categories,
    required this.title,
    required this.description,
    required this.padding });

  @override
  State<Interest> createState() => InterestBlockState();
}

class InterestBlockState extends State<Interest> {


  final List<String> _selectedCategories = [];

  void _onCategorySelected(String category) {
    setState(() {
      if (_selectedCategories.contains(category)) {
        _selectedCategories.remove(category);
      } else {
        _selectedCategories.add(category);
      }
    });
  }



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.padding,
      child: Column(
        textDirection: TextDirection.ltr,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.title,
            textDirection: TextDirection.ltr,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Text(
              widget.description,
              textDirection: TextDirection.ltr,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: Theme.of(context).hintColor,
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Wrap(
                spacing: 8.0,
                children: widget.categories
                    .map((category) =>
                    InkWell(
                        customBorder: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        onTap: () {
                          _onCategorySelected(category);
                        },
                        child: Chip(
                            shape:  RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                              side: const BorderSide(color: Colors.transparent),
                            ),
                            backgroundColor:
                            _selectedCategories.contains(category)
                                ? Theme.of(context).primaryColor
                                : Theme.of(context).chipTheme.backgroundColor,
                            label: Text(
                              category,
                              style: Theme.of(context).textTheme.bodyMedium,
                            ))) ,
                )
                    .toList(),
              ))
        ],
      ),
    );
  }
}