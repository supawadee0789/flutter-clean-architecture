import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({super.key});

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.h),
      width: 0.9.sw,
      height: 42.h,
      child: TextField(
        onTapOutside: (event) {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        decoration: InputDecoration(
            border: const OutlineInputBorder(),
            contentPadding:
                EdgeInsets.symmetric(vertical: 2.h, horizontal: 10.w),
            hintText: 'Search...',
            suffixIcon: const Icon(Icons.search_rounded)),
      ),
    );
  }
}
