import 'package:flutter/material.dart';

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
    return MaterialApp.router(
      routerConfig: router,
    );
  }
}
