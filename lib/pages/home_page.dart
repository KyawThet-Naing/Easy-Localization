import 'package:flutter/material.dart';
import 'package:localization/pages/language_page.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Localization'),
        actions: [
          IconButton(
              onPressed: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => Language())),
              icon: Icon(Icons.translate))
        ],
      ),
      body: Center(
        child: Text('Welcome'),
      ),
    );
  }
}
