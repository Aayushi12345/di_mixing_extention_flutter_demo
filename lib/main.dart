import 'package:di_mixing_app/di/locator.dart';
import 'package:di_mixing_app/first_screen.dart';
import 'package:flutter/material.dart';
import 'package:di_mixing_app/generated/l10n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';


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
      onGenerateTitle: (context) {
        return S.of(context).title;
      },
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        // S.de
        ],
      supportedLocales: S.delegate.supportedLocales,

      title: 'Di Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const FirstScreen(),
    );
  }
}

