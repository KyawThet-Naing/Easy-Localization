import 'package:flutter/material.dart';

class Language extends StatelessWidget {
  const Language({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Languages'),
      ),
      body: Column(
        children: [
          _buildListTile(name: 'English'),
          _buildListTile(name: 'မြန်မာ'),
          _buildListTile(name: '한국/韓國'),
        ],
      ),
    );
  }

  _buildListTile({required String name}) => Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            leading: Icon(Icons.translate),
            title: Text(name),
            onTap: () {},
          ),
        ),
      );
}
