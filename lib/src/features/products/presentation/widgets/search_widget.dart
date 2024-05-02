import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchWidget extends StatefulWidget {
  final void Function(String) onChanged;
  const SearchWidget({super.key, required this.onChanged});

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  Timer? typingTimer;

  void handleInputChange(String value) {
    if (typingTimer != null) {
      typingTimer!.cancel();
    }

    typingTimer = Timer(const Duration(milliseconds: 1000), () {
      widget.onChanged(value);
    });
  }

  @override
  void dispose() {
    typingTimer?.cancel();
    super.dispose();
  }

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
        onChanged: handleInputChange,
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
