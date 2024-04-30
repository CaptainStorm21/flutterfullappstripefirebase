import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterfullappstripefirebase/screens/cart.dart';
import 'package:flutterfullappstripefirebase/screens/bottom_bar.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then((_) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.brown.shade50,
        textSelectionTheme: TextSelectionThemeData(
          selectionColor: Colors.brown.shade200, // Set the desired color here
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.brown)
            .copyWith(background: Colors.grey.shade200),
      ),
      home: const BottomBarScreen(),
    );
  }
}
