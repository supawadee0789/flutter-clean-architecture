import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  final List<String> categories;
  const Categories({super.key, required this.categories});
  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: widget.categories
          .map((e) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(e),
              ))
          .toList(),
    );
  }
}
