import 'package:flutter/material.dart';

class RefreshWidget extends StatelessWidget {
  final String? errorMsg;
  final void Function()? onRefresh;
  const RefreshWidget({super.key, this.errorMsg, this.onRefresh});

  @override
  Widget build(BuildContext context) {
    final Widget error = errorMsg != null ? Text(errorMsg!) : const SizedBox();

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          error,
          IconButton(
              onPressed: onRefresh, icon: const Icon(Icons.refresh_rounded))
        ],
      ),
    );
  }
}
