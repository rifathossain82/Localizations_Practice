import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:localization_practice/l10n/l10n.dart';
import 'package:localization_practice/pages/Homepage.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:localization_practice/providers/LocaleProviders.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context)=>LocalProvider(),
      builder: (context,child){
          final provider=Provider.of<LocalProvider>(context);
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: Homepage(),
            supportedLocales: L10n.all,
            locale: provider.locale ,
            localizationsDelegates: [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate
            ],
          );
      },
    );
  }
}