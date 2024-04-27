import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'src/core/router/router.dart';
import 'src/core/utils/injections.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Inject all dependencies
  await initInjections();

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844), // Iphone 14 dimension
      child: MaterialApp.router(
        routerConfig: router,
      ),
    );
  }
}
