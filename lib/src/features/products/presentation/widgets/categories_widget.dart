import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Categories extends StatefulWidget {
  final List<String> categories;
  final void Function(int index) onTap;
  const Categories({super.key, required this.categories, required this.onTap});
  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int? selectedItem;

  void setSelectedItem(int index) {
    setState(() {
      selectedItem = index;
      widget.onTap(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const ClampingScrollPhysics(),
        padding: const EdgeInsets.all(8),
        itemCount: widget.categories.length,
        itemBuilder: (BuildContext context, int index) {
          return CategoryItem(
            name: widget.categories[index],
            isSelected: index == selectedItem,
            onTap: () => setSelectedItem(index),
          );
        });
  }
}

class CategoryItem extends StatelessWidget {
  final String name;
  final bool isSelected;
  final void Function() onTap;
  const CategoryItem(
      {super.key,
      required this.name,
      required this.isSelected,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    getColor(bool isPrimary) => (Set<MaterialState> states) => isPrimary
        ? Theme.of(context).colorScheme.primary
        : Theme.of(context).colorScheme.onPrimary;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.0.w),
      child: OutlinedButton(
        style: ButtonStyle(
          foregroundColor:
              MaterialStateProperty.resolveWith(getColor(!isSelected)),
          backgroundColor:
              MaterialStateProperty.resolveWith(getColor(isSelected)),
        ),
        onPressed: onTap,
        child: Text(name.toUpperCase()),
      ),
    );
  }
}
