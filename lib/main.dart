import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'pages/home_page.dart';

void main() /*async*/ {
  // await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(
      child: AppLocalization(),
      supportedLocales: [
        Locale('en', 'US'),
        Locale('my', 'MM'),
        Locale('ko', 'KR'),
      ],
      fallbackLocale: Locale('en', 'US'),
      path: 'assets/languages'));
}

class AppLocalization extends StatelessWidget {
  const AppLocalization({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'localization',
      locale: context.locale,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      home: Home(),
    );
  }
}
