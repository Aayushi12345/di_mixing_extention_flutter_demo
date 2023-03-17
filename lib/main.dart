import 'package:di_mixing_app/di/locator.dart';
import 'package:di_mixing_app/first_screen.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_gen/gen';
// import 'package:di_mixing_app/generated/l10n.dart';

// import 'package:flutter_gen/gen_l10n/app_localizations.dart';


void main() {
  setUp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates:  [
        // S.de
        ],
      title: 'Di Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const FirstScreen(),
    );
  }
}

