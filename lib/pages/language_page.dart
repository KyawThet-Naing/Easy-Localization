import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class Language extends StatelessWidget {
  const Language({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(tr('language'))),
      body: Column(
        children: [
          _buildListTile(
              name: 'English', context: context, locale: Locale('en', 'US')),
          _buildListTile(
              name: 'မြန်မာ', context: context, locale: Locale('my', 'MM')),
          _buildListTile(
              name: '한국/韓國', context: context, locale: Locale('ko', 'KR')),
        ],
      ),
    );
  }

  _buildListTile(
          {required String name,
          required BuildContext context,
          required Locale locale}) =>
      Card(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          leading: Icon(Icons.translate),
          title: Text(name),
          onTap: () {
            context.setLocale(locale);
          },
          trailing: locale.languageCode == context.locale.languageCode
              ? Icon(Icons.check, color: Colors.blue)
              : SizedBox(),
        ),
      ));
}
